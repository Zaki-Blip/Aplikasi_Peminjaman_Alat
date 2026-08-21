<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class StudentForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('user_id')
                    ->required()
                    ->label('Students Name')
                    ->relationship('User','name'),
                TextInput::make('classroom_id')
                    j
                    ->required(),
                TextInput::make('nisn')
                    ->required(),
                TextInput::make('phone_number')
                    ->required(),
                Select::make('level')
                    ->required()
                    ->label('Grade')
                    ->options([
                        10 =>'Grade X',
                        11 =>'Grade XI',
                        12 =>'Grade XII',
                    ]),
                TextInput::make('address')
                    ->required(),
                TextInput::make('profil_picture')
                    ->required(),
                Toggle::make('is_active'),
            ]);
    }
    }

