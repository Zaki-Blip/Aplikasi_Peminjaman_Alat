<?php

namespace App\Filament\Resources\Tickets\Tables;

use Filament\Actions\Action;
use Filament\Actions\ActionGroup;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
//use Filament\Forms\Components\Select;
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
                TextColumn::make('user.name')
                    ->label('Requester')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('asset.name')
                    ->label('Asset Name')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('qty')
                    ->numeric()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('booked_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('borrowed_at')
                    ->dateTime()
                    ->sortable(),
                TextColumn::make('due_at')
                    ->date()
                    ->sortable()
                    ->description(function($record){
                        if(in_array($record->status,['booked','cancelled'])|| $record->due_at) return null;
                        $due = $record->due_at->startOfDay();
                        $new = now()->startOfDay();
                        $return = $record->returned_at?->startOfDay();

                        if($record->status === 'returned' $$ $return){
                            $diff = $due->diffInDays($return,false);
                            return $diff >0 ? "Return Late By {{$diff}}days":"returned on time."
                        }
                        $diff = $now->diffInDays($due,false);
                        return match(true){
                            $diff < 0 => "overdue By" .abs($diff) . "Days",
                            $diff == 0 =>
                        }
                    }),
                TextColumn::make('returned_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)    ,
                TextColumn::make('status')
                    ->label('Status')
                    ->formatStateUsing(fn(string $state): string=>match($state)
                    {
                        'booked' => 'Reserved',
                        'borrowed' => 'On Loan',
                        'verifying' => 'Review',
                        'returned' => 'Returned',
                        'cancelled' => 'Cancel',
                        default => ucfirst($state)
                    })
                    ->color(fn(string $state): string=>match($state)
                    {
                        'booked' => 'info',
                        'borrowed' => 'success',
                        'verifying' => 'warning',
                        'returned' => 'success',
                        'cancelled' => 'danger'
                    }),

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
                Action::make('approvedBorrowing')
                ->label('Approve Borrowing')
                ->color('warning')
                ->requiresConfirmation()
                ->visible(fn($record)=>$record->status === 'booked')
                ->action(fn($record)=>$record->update([
                    'status' => 'borrowed',
                    'borrowed_at' => now(),
                ]))->button(),
                Action::make('cancelBorrowing')
                ->label('Reject')
                ->color('danger')
                ->requiresConfirmation()
                ->visible(fn($record)=>$record->status === 'booked')
                ->action(fn($record)=>$record->update([
                    'status' => 'cancelled',
                ]))->button(),
                Action::make('verivyReturn')
                ->label('Verify Return')
                ->color('warning')
                ->requiresConfirmation()
                ->visible(fn($record)=>$record->status === 'borrowed')
                ->action(fn($record)=>$record->update([
                    'status' => 'verifying',
                ]))->button(),
                ActionGroup::make([
                    ViewAction::make(),
                    EditAction::make(),
                    DeleteAction::make(),
                ]),
                Action::make('completed')
                ->label('Completed')
                ->color('success')
                ->requiresConfirmation()
                ->visible(fn($record)=>$record->status === 'verifying')
                ->action(fn($record)=>$record->update([
                    'status' => 'returned',
                    'returned_at' => now(),
                ]))->button()


            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
