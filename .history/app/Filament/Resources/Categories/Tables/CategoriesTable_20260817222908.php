<?php

namespace App\Filament\Resources\Categories\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\Layout\Stack;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class CategoriesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->contentGrid([
                'xl' => 4,
                'lg' => 3,
                'md' => 2,
            ])

            ->columns([
                Stack::make([
                    ImageColumn::make('image')
                        ->imageSize(150)
                        ->alignCenter(),

                    TextColumn::make('name')
                        ->weight('bold')
                        ->searchable()
                        ->alignCenter(),

                    IconColumn::make('is_active')
                        ->formatStatusUsing(fn($state) => $state ? 'Active')
                        ->boolean()
                        ->alignCenter(),

                    TextColumn::make('created_at')
                        ->dateTime()
                        ->sortable()
                        ->alignCenter(),

                    TextColumn::make('updated_at')
                        ->dateTime()
                        ->sortable()
                        ->alignCenter(),
                ]),
            ])

            ->filters([
                //
            ])

            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
                DeleteAction::make(),
            ])

            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
