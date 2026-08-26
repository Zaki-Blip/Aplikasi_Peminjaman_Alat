<?php

namespace App\Filament\Resources\ActivityLogs\Schemas;

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
                TextColumn::make('causer.name')
                    ->label('User')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('description')
                    ->label('Action')
                    ->badge()
                    ->color(fn($state)=> match($state){
                        'created' => 'success',
                        'updated' => 'warning',
                        'deleted' => 'danger',
                        default => 'gray'
                    }),
                TextColumn::make('subject_type')
                    ->label('Model')
                    ->formatStateUsing(fn($state)=> class_basename($state))
                    ->badge(),
                TextColumn::make('subject_id')
                    ->label('ID'),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable(),
                    ]),
            ]);
    }
}
