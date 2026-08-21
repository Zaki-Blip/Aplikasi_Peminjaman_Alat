<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;

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

                    ]),
                Section::make()
                    ->schema([
                    TextEntry::make('user.name')
                        ->label('Student Name')
                        ->icon(Heroicon::UserCircle),
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
                        ])
            ])->columns(1);
    }
}
