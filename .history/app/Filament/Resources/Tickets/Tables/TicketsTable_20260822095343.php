<?php

namespace App\Filament\Resources\Tickets\Tables;

use Filament\Actions\Action;
use Filament\Actions\ActionGroup;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class TicketsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('ticket_number')
                    ->label('Ticket')
                    ->searchable(),
                Select::make('user.name')
                    ->required()
                    ->label('Requester'),
                Select::make('asset.name')
                    ->label('Asset Name')
                    ->sortable(),
                TextColumn::make('qty')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('booked_at')
                    ->dateTime()
                    ->sortable(),
                TextColumn::make('borrowed_at')
                    ->dateTime()
                    ->sortable(),
                TextColumn::make('due_at')
                    ->date()
                    ->sortable(),
                TextColumn::make('returned_at')
                    ->dateTime()
                    ->sortable(),
                TextColumn::make('status')
                    ->label('Status')
                    ->badge(),
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
                Action::make('ApprovedBorrowing')
                ->label('Approve Borrowing')
                ->color('warning')
                ->visible(fn($record)=>$record->status === 'booked')
                ->action(fn($record)=>$record->updated([
                    'status' => ' borrowed',
                    'borrowed_at' => now(),
                )])->button(),
                ActionGroup::make([
                    ViewAction::make(),
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
