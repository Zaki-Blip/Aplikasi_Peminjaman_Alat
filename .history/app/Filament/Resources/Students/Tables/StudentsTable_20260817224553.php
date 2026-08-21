<?php

namespace App\Filament\Resources\Students\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class StudentsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->contentGrid([
                'xl' => 4,
                'lg' => 2,
                'md' => 3,
            ])
            ->columns([
                Grid::make([
                    'default' => 1
                ])->schema([
                    l
                ])
                ImageColumn::make('profile_picture')
                    ->label('Profile Picture')
                    ->disk('public'),
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
