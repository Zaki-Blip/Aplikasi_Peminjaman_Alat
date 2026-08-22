<?php

namespace App\Filament\Resources\Tickets\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Schemas\Components\Section;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class TicketsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                Section::make('Landing Transaction')
                ->description('Assigned an asset to requster and set the expected return date.')
                ->schema([
                     Select::make('user_id')
                    ->required()
                    ->label('Requester')
                    ->relationship('user','name'),
                Select::make('asset_id')
                    ->required()
                    ->label('Asset')
                    ->relationship('asset','name'),
                DatePicker::make('due_at'),
                ])->columns(3)
                ->columnSpanFull(),



            ])
            ->filters([
                //
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
