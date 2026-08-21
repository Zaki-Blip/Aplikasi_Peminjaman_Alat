<?php

namespace App\Filament\Resources\Categories\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
//use Filament\Schemas\Components\Grid;
use Filament\Tables\Columns\Grid;
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
    Grid::make([
        'default' => 1
    ])->schema([
        Stack::make([


        ImageColumn::make('image')
            ->imageSize(80)
            ->circular()
            ->extraImgAttributes(['class' => 'mx-auto']),

        TextColumn::make('name')
            ->weight('bold')
            ->size('lg')
            ->searchable(),
            ]),
    ]),


        TextColumn::make('is_active')
            ->formatStateUsing(fn ($state) => $state ? 'Active' : 'Inactive')
            ->badge()
            ->color(fn ($state) => $state ? 'success' : 'danger'),

        TextColumn::make('created_at')
            ->dateTime()
            ->sortable()
            ->color('gray')
            ->size('sm')
            ->toggleable(isToggledHiddenByDefault: true),
    ])->alignCenter()->space(2)



            ->filters([
                //
            ])

            // Ganti recordActions menjadi actions
            ->actions([
                ViewAction::make(),
                EditAction::make(),
                DeleteAction::make(),
            ])

            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
