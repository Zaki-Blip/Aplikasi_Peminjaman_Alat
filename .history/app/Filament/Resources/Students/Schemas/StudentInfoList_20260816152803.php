<?php

namespace App\Filament\Resources\Students\Schemas;

use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class StudentInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('user.name')
                    ->label('Student Name')
                    ->placeholder('-'),

                TextEntry::make('classroom.name')
                    ->label('Class')
                    ->placeholder('-'),

                TextEntry::make('nisn')
                    ->label('NISN')
                    ->placeholder('-'),

                TextEntry::make('phone_number')
                    ->label('Phone Number')
                    ->placeholder('-'),

                TextEntry::make('gender')
                    ->label('Gender')
                    ->formatStateUsing(fn ($state) => match ($state) {
                        'male' => 'Male',
                        'female' => 'Female',
                        default => '-',
                    }),

                TextEntry::make('address')
                    ->label('Address')
                    ->placeholder('-')
                    ->columnSpanFull(),

                ImageEntry::make('profil_picture')
                    ->label('Profile Picture')
                    ->disk('public')
                    ->placeholder('-'),

                TextEntry::make('created_at')
                    ->label('Created At')
                    ->dateTime()
                    ->placeholder('-'),

                TextEntry::make('updated_at')
                    ->label('Updated At')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
