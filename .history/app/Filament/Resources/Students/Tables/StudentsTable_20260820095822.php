<?php

namespace App\Filament\Resources\Students\Tables;

use Filament\Actions\ActionGroup;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Support\Enums\FontWeight;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\Layout\Grid;
use Filament\Tables\Columns\Layout\Stack;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class StudentsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->contentGrid([
                'xl' => 4,
                'lg' => 3,
                'md' => 3,
            ])
            ->columns([
                Grid::make([
                    'default' => 1
                ])->schema([
                    Stack::make([
                        ImageColumn::make('profile_picture')
                    ->label('Profile Picture')
                    ->disk('public'),
                    TextColumn::make('user.name')
                    ->label('Students Name')
                    ->sortable()
                    ->weight(FontWeight::Bold)
                        ->searchable(),
                    TextColumn::make('nisn')
                    ->label('NISN')
                    ->icon(Heroicon::Identification)
                        ->searchable(),
                    TextColumn::make('classroom.name')
                    ->label('Class')
                    ->icon(Heroicon::BuildingOffice)
                        ->numeric()
                        ->sortable(),

                    TextColumn::make('phone_number')
                        ->label('Phone Number')
                        ->icon(Heroicon::Phone)
                        ->searchable(),
                    TextColumn::make('gender')
                        ->label('Gender')
                        ->badge()
                        ->searchable(),
                    ]),

                ]),

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
                ViewAction::make(),
                ActionGroup::make([
                    EditAction::make(),
                    DeleteAction::make(),
                ])

            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
