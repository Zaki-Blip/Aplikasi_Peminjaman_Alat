<?php

namespace App\Filament\Resources\Classrooms\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class ClassroomForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('major_id')
                    ->required()
                    ->label('Major')
                    ->relationship('major','name')
                    ->options(Major::where()),
                TextInput::make('name')
                    ->required(),
                TextInput::make('level')
                    ->required()
                    ->numeric(),
                Toggle::make('is_active'),
            ]);
    }
}
