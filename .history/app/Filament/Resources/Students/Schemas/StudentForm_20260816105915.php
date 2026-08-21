<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Forms\Components\Select;
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
                    ->relationship('major','name')
                    ->options(Major::where('is_Active',true)->pluck('name','id')),
                TextInput::make('name')
                    ->required(),
                Select::make('level')
                    ->required()
                    ->label('Grade')
                    ->options([
                        10 =>'Grade X',
                        11 =>'Grade XI',
                        12 =>'Grade XII',
                    ]),
                Toggle::make('is_active'),
            ]);
    }
    }

