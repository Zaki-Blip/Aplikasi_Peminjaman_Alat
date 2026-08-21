<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class StudentInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make()
                    ->schema([
                        ImageEntry::make('profile_picture')
                        ->label('Profile Picture')
                        ->disk('public')
                        ->imagaWeight(200),
                    ]),
                Section::make()
                TextEntry::make('user.name')
                    ->label('Student Name'),


                TextEntry::make('classroom.name')
                    ->label('Class'),


                TextEntry::make('nisn')
                    ->label('NISN'),


                TextEntry::make('phone_number')
                    ->label('Phone Number'),


                TextEntry::make('gender')
                    ->label('Gender'),

                TextEntry::make('address')
                    ->label('Address')



            ])->columns(1);
    }
}
