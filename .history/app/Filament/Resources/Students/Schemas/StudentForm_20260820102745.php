<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextArea;
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
                    ->relationship('user','name', fn($query)=>$query->role),
                Select::make('classroom_id')
                    ->label('Class')
                    ->required()
                    ->relationship('classroom','name'),
                TextInput::make('nisn')
                    ->unique(ignoreRecord:true)
                    ->validationMessages(['unique' => 'The NISN Has Already Been Registered'])
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
                        'male' =>'Male',
                        'female' =>'Female',
                    ]),
                TextArea::make('address')
                    ->label('Address')
                    ->default(null)
                    ->columnSpanFull(),
                FileUpload::make('profile_picture')
                    ->image()
                    ->visibility('public')
                    ->label('Profile Picture')
                    ->directory('Students')
                    ->default(null)
                    ->disk('public')
            ]);
    }
    }

