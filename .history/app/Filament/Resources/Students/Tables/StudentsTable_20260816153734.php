<?php

namespace App\Filament\Resources\Students\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class StudentsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('profile_picture')
                    ->disk()
                TextColumn::make('user.name')
                ->label('Students Name')
                ->sortable()
                    ->searchable(),
                TextColumn::make('classroom_id')
                ->label('Class')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('nisn')
                ->label('NISN')
                    ->searchable(),
                TextColumn::make('phone_number')
                ->label('Phone Number')
                    ->searchable(),
                TextColumn::make('gender')
                ->label('Gender')
                ->badge()
                    ->searchable(),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
