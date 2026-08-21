<?php

namespace App\Filament\Resources\Assets\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class AssetsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                    ->disk('public')
                    ->imageSize(50),
                TextColumn::make('category_id')
                    ->label('Category')
                    ->sortable(),
                TextColumn::make('name')
                    ->label('Name')
                    ->searchable(),
                TextColumn::make('code')
                    ->label('Code')
                    ->searchable(),
                TextColumn::make('good_qty')
                    ->label('Good')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('damaged_qty')
                    ->label('Damaged')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('barrowed_qty')
                    ->label('Barrowed')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('lost_qty')
                    ->label('Lost')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('available_qty')
                    ->label('Available')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('total_qty')
                    ->label('Total')
                    ->numeric()
                    ->sortable(),
                IconColumn::make('is_available')
                    ->boolean(),
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
                Selectfilter::make('category_id')
                ->label('Category')
                ->
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
