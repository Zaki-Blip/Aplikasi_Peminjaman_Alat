<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;
use Illuminate\Database\Eloquent\Factories\Relationship;

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
                    ->label('Class')
                    ->required()
                    ->Relationship('classroom','name'),
                TextInput::make('nisn')
                    ->unique(ignoreRecord:true)
                    ->validationMessages('unique' => 'The NISN Has Already Been Registered')
                    ->label('NISN')
                    ->required(),
                TextInput::make('phone_number')
                    ->tel()
                    ->label('Phone Number')
                    ->required(),
                Select::make('gender')
                    ->required()
                    ->label('Gender')
                    ->options([
                        male =>'Male',
                        female =>'Female',
                    ]),
                TextInput::make('address')
                    ->required(),
                TextInput::make('profil_picture')
                    ->required(),
                Toggle::make('is_active'),
            ]);
    }
    }

