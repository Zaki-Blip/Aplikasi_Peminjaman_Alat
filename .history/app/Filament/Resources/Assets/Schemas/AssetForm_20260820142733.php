<?php

namespace App\Filament\Resources\Assets\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Fieldset;
use Filament\Schemas\Components\Group;
use Filament\Schemas\Components\Utilities\Get;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;

class AssetForm
{
    protected static function recalculateStock(Get $get, Set $set):void{
        $good = (int) $get('good_qty');
        $damaged = (int) $get('damaged_qty');
        $borrowed = (int) $get('barrowed_qty');
        $lost = (int) $get('lost_qty');
        $set ('available_qty', $good - $borrowed);
        $set('total_qty',$good + $damaged + $borrowed );
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
                    ->afterStateUpdated(function(Get $get, Set $set){
                        h
                    }),
                TextInput::make('code')
                    ->readOnly()
                    ->reactive()
                    ->required(),
                TextInput::make('name')
                    ->required()
                    ->columnSpanFull(),

                    ]),
                    Toggle::make('is_available')
                    ->required(),
                ])->columnSpan(2),

            Fieldset::make('Asset Condition')
                    ->schema([
                        TextInput::make('good_qty')
                    ->required()
                    ->label('Good')
                    ->default(0)
                    ->reactive()
                    ->afterStateUpdated(fn(Get $get, Set $set)=> self::recalculateStock($get, $set)),
                TextInput::make('damaged_qty')
                    ->required()
                    ->label('Damaged')
                    ->default(0)
                    ->reactive()
                    ->afterStateUpdated(fn(Get $get, Set $set)=> self::recalculateStock($get, $set)),
                TextInput::make('barrowed_qty')
                    ->required()
                    ->label('Barrowed')
                    ->default(0)
                    ->reactive()
                    ->afterStateUpdated(fn(Get $get, Set $set)=> self::recalculateStock($get, $set)),
                TextInput::make('lost_qty')
                    ->required()
                    ->label('Lost')
                    ->default(0)
                    ->reactive()
                    ->afterStateUpdated(fn(Get $get, Set $set)=> self::recalculateStock($get, $set)),
                TextInput::make('available_qty')
                    ->numeric()
                    ->required()
                    ->label('Available')
                    ->belowContent('Available Assets For Borrowing')
                    ->readOnly()
                    ->default(0),

                TextInput::make('total_qty')
                    ->numeric()
                    ->required()
                    ->label('Total')
                    ->default(0),
                    ])->columnSpan(1),


            ])->columns(3);
    }
}
