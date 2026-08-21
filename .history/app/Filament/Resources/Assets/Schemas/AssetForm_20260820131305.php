<?php

namespace App\Filament\Resources\Assets\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class AssetForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('category_id')
                    ->required()
                    ->relationship('category','name')
                    ->label('Category'),
                TextInput::make('name')
                    ->required(),
                TextInput::make('code')
                    ->required(),
                TextInput::make('total_qty')
                    ->required()
                    ->numeric(),
                TextInput::make('good_qty')
                    ->required()
                    ->numeric(),
                TextInput::make('damaged_qty')
                    ->required()
                    ->numeric(),
                TextInput::make('barrowed_qty')
                    ->required()
                    ->numeric(),
                TextInput::make('lost_qty')
                    ->required()
                    ->numeric(),
                Toggle::make('is_available')
                    ->required(),
            ]);
    }
}
