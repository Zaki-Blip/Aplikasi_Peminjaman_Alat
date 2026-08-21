<?php

namespace App\Filament\Resources\Categories\Tables;

use Filament\Actions\ActionGroup;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\Layout\Grid;
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
            ->circular(),


        TextColumn::make('name')
            ->weight('bold')
            ->searchable(),
            ]),
    ]),

        IconColumn::make('is_active')
            ->boolean()
    ->trueIcon('heroicon-o-check-circle')
    ->falseIcon('heroicon-o-x-circle')
    ->trueColor('success')
    ->falseColor('danger'),


        TextColumn::make('created_at')
            ->dateTime()
            ->sortable()
            ->color('gray')
            ->size('sm')
            ->toggleable(isToggledHiddenByDefault: true),
        TextColumn::make('updated_at')
            ->dateTime()
            ->sortable()
            ->toggleable(isToggledHiddenByDefault: true),
    ])



            ->filters([
                //
            ])

            // Ganti recordActions menjadi actions
            ->actions([
                ViewAction::make(),
                ActionGroup::make([
                    EditAction::make(),
                    DeleteAction::make(),
            ])


            ])

            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
