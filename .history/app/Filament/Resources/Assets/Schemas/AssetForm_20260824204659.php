<?php

namespace App\Filament\Resources\Assets\Schemas;

use App\Models\Asset;
use App\Models\Category;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Fieldset;
use Filament\Schemas\Components\Group;
use Filament\Schemas\Components\Utilities\Get;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class AssetForm
{
    protected static function recalculateStock(Get $get, Set $set): void
    {
        $good = (int) $get('good_qty');
        $damaged = (int) $get('damaged_qty');
        $borrowed = (int) $get('borrowed_qty');
        $lost = (int) $get('lost_qty');

        // Aset yang masih bisa dipinjam
        $available = $good - $borrowed;

        // Total seluruh aset
        $total = $good + $damaged + $borrowed + $lost;

        $set('available_qty', max(0, $available));
        $set('total_qty', $total);
    }

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Group::make()
                    ->schema([
                        Fieldset::make('Asset Detail')
                            ->schema([
                                Select::make('category_id')
                                    ->required()
                                    ->relationship('category', 'name')
                                    ->label('Category')
                                    ->reactive()
                                    ->afterStateUpdated(function (Get $get, Set $set) {
                                        $category = Category::find($get('category_id'));

                                        if (!$category) {
                                            return;
                                        }

                                        $prefix = strtoupper(
                                            Str::substr($category->name, 0, 3)
                                        );

                                        $lastCode = Asset::where(
                                            'code',
                                            'like',
                                            $prefix . '%'
                                        )
                                            ->orderBy('code', 'desc')
                                            ->value('code');

                                        if ($lastCode) {
                                            $number = (int) substr($lastCode, 3);
                                            $nextNumber = $number + 1;
                                        } else {
                                            $nextNumber = 1;
                                        }

                                        $code = $prefix . str_pad(
                                            $nextNumber,
                                            3,
                                            '0',
                                            STR_PAD_LEFT
                                        );

                                        $set('code', $code);
                                    }),

                                TextInput::make('code')
                                    ->readOnly()
                                    ->reactive()
                                    ->required(),

                                TextInput::make('name')
                                    ->required(),

                                TextInput::make('purchase_price')
                                    ->label('Purchase Price')
                                    ->numeric(),

                                TextInput::make('procurement_year')
                                    ->label('Procurement Year')
                                    ->numeric(),

                                TextInput::make('funding_source')
                                    ->label('Funding Source'),

                                RichEditor::make('description')
                                    ->label('Description')
                                    ->columnSpanFull()
                                    ->extraAttributes([
                                        'style' => 'min-height: 250px',
                                    ]),

                                FileUpload::make('image')
                                    ->label('Asset Picture')
                                    ->disk('public')
                                    ->directory('Asset Picture')
                                    ->default(null)
                                    ->columnSpanFull(),
                            ]),

                        Toggle::make('is_available')
                            ->required(),
                    ])
                    ->columnSpan(2),

                Fieldset::make('Asset Condition')
                    ->schema([
                        TextInput::make('good_qty')
                            ->required()
                            ->label('Good')
                            ->numeric()
                            ->default(0)
                            ->reactive()
                            ->afterStateUpdated(
                                fn (Get $get, Set $set) =>
                                    self::recalculateStock($get, $set)
                            ),

                        TextInput::make('damaged_qty')
                            ->required()
                            ->label('Damaged')
                            ->numeric()
                            ->default(0)
                            ->reactive()
                            ->afterStateUpdated(
                                fn (Get $get, Set $set) =>
                                    self::recalculateStock($get, $set)
                            ),

                        TextInput::make('borrowed_qty')
                            ->required()
                            ->label('Borrowed')
                            ->numeric()
                            ->default(0)
                            ->reactive()
                            ->afterStateUpdated(
                                fn (Get $get, Set $set) =>
                                    self::recalculateStock($get, $set)
                            ),

                        TextInput::make('lost_qty')
                            ->required()
                            ->label('Lost')
                            ->numeric()
                            ->default(0)
                            ->reactive()
                            ->afterStateUpdated(
                                fn (Get $get, Set $set) =>
                                    self::recalculateStock($get, $set)
                            ),

                        TextInput::make('available_qty')
                            ->numeric()
                            ->dehydrated(false)
                            ->label('Available')
                            ->belowContent(
                                'Available Assets For Borrowing'
                            )
                            ->readOnly()
                            ->default(0)
                            ->afterStateHydrated(
                                fn (Get $get, Set $set) =>
                                    self::recalculateStock($get, $set)
                            ),

                        TextInput::make('total_qty')
                            ->numeric()
                            ->required()
                            ->label('Total')
                            ->default(0),
                    ])
                    ->columnSpan(1),
            ])
            ->columns(3);
    }
}
