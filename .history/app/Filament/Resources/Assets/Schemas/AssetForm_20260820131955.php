<?php

namespace App\Filament\Resources\Assets\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Fieldset;
use Filament\Schemas\Schema;

class AssetForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
            Fieldset::make('Asset Detail')
                    ->schema([
                TextInput::make('code')
                    ->required(),
                TextInput::make('category_id')
                    ->required()
                    ->relationship('category','name')
                    ->label('Category'),
                TextInput::make('name')
                    ->required()
                    ->columnSpanFull(),

                    ]),

            Fieldset::make('Asset Condition')
                    ->schema([
                        TextInput::make('good_qty')
                    ->required()
                    ->label('Good'),
                TextInput::make('damaged_qty')
                    ->required()
                    ->label('Damaged'),
                TextInput::make('barrowed_qty')
                    ->required()
                    ->label('Barrowed'),
                TextInput::make('lost_qty')
                    ->required()
                    ->label('Lost'),
                TextInput::make('total_qty')
                    ->required()
                    ->label('Total'),
                    ]),

                Toggle::make('is_available')
                    ->required(),
            ]);
    }
}
