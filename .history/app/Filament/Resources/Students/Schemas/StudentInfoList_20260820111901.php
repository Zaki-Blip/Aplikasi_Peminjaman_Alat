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
                        ->label('Class')
                        ->icon(Heroicon::BuildingOffice),

                    TextEntry::make('nisn')
                        ->label('NISN')
                        ->icon(Heroicon::Identification),

                    TextEntry::make('phone_number')
                        ->label('Phone Number')
                        ->icon(Heroicon::Phone),

                    TextEntry::make('gender')
                        ->label('Gender'),
                        ->

                    TextEntry::make('address')
                        ->label('Address')
                        ->badge()
                        ])
            ])->columns(1);
    }
}
