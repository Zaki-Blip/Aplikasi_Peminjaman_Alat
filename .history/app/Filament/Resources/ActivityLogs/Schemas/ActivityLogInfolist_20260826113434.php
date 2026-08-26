<?php

namespace App\Filament\Resources\ActivityLogs\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Filament\Tables\Columns\TextColumn;

class ActivityLogInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Information')
                    ->schema([
                TextEntry::make('causer.name')
                    ->label('User')
                    ->searchable()
                    ->sortable(),
                TextEntry::make('description')
                    ->label('Action')
                    ->badge()
                    ->color(fn($state)=> match($state){
                        'created' => 'success',
                        'updated' => 'warning',
                        'deleted' => 'danger',
                        default => 'gray'
                    }),
                TextEntry::make('subject_type')
                    ->label('Model')
                    ->formatStateUsing(fn($state)=> class_basename($state))
                    ->badge(),
                TextEntry::make('subject_id')
                    ->label('ID'),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->sortable(),
                    ]),
            ]);
    }
}
