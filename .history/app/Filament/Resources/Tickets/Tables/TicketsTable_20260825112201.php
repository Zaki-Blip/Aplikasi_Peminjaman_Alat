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
use Filament\Forms\Components\Textarea;
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
                    ->icon('heroicon-m-flag')
                    ->iconColor(function ($record) {
                        if (
                            in_array($record->status, ['booked', 'cancelled']) ||
                            !$record->due_at
                        ) {
                            return 'gray';
                        }

                        $due = $record->due_at->startOfDay();

                        $isOverdue = now()
                            ->startOfDay()
                            ->isAfter($due);

                        $isLateReturn =
                            $record->status === 'returned' &&
                            $record->returned_at &&
                            $record->returned_at
                                ->startOfDay()
                                ->isAfter($due);

                        return match (true) {
                            $record->status === 'returned' =>
                                $isLateReturn ? 'warning' : 'success',

                            in_array($record->status, ['borrowed', 'verifying']) =>
                                $isOverdue ? 'danger' : 'success',

                            default => 'gray',
                        };
                    })
                    ->description(function ($record) {
                        if (
                            in_array($record->status, ['booked', 'cancelled']) ||
                            !$record->due_at
                        ) {
                            return null;
                        }

                        $due = $record->due_at->startOfDay();
                        $now = now()->startOfDay();
                        $returned = $record->returned_at?->startOfDay();

                        // Barang sudah dikembalikan
                        if ($record->status === 'returned' && $returned) {
                            $diff = $due->diffInDays($returned, false);

                            return $diff > 0
                                ? "Returned late by {$diff} days"
                                : 'Returned on time.';
                        }

                        // Barang masih dipinjam
                        $diff = $now->diffInDays($due, false);

                        return match (true) {
                            $diff < 0 =>
                                'Overdue by ' . abs($diff) . ' days',

                            $diff === 0 =>
                                'Due today',

                            default =>
                                "{$diff} days remaining",
                        };
                    }),

                TextColumn::make('returned_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('status')
                    ->label('Status')
                    ->formatStateUsing(
                        fn (string $state): string => match ($state) {
                            'booked' => 'Reserved',
                            'borrowed' => 'On Loan',
                            'verifying' => 'Review',
                            'returned' => 'Returned',
                            'cancelled' => 'Cancelled',
                            default => ucfirst($state),
                        }
                    )
                    ->color(
                        fn (string $state): string => match ($state) {
                            'booked' => 'info',
                            'borrowed' => 'success',
                            'verifying' => 'warning',
                            'returned' => 'success',
                            'cancelled' => 'danger',
                            default => 'gray',
                        }
                    ),

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
                    ->visible(fn ($record) => $record->status === 'booked')
                    ->action(
                        fn ($record) => $record->update([
                            'status' => 'borrowed',
                            'borrowed_at' => now(),
                        ])
                    )
                    ->button(),

                Action::make('cancelBorrowing')
                    ->label('Reject')
                    ->color('danger')
                    ->requiresConfirmation()
                    ->visible(fn ($record) => $record->status === 'booked')
                    ->action(
                        fn ($record) => $record->update([
                            'status' => 'cancelled',
                        ])
                    )
                    ->button(),

                Action::make('verifyReturn')
                    ->label('Return')
                    ->color('info')
                    ->requiresConfirmation()
                    ->visible(fn ($record) => $record->status === 'borrowed')
                    ->action(
                        fn ($record) => $record->update([
                            'status' => 'verifying',
                        ])
                    )
                    ->button(),

                Action::make('completed')
                    ->label('Completed')
                    ->color('success')
                    ->requiresConfirmation()
                    ->visible(fn ($record) => $record->status === 'verifying')
                    ->schema([
                        Select::make('Condition')
                        ->label('Asset Condition')
                        ->required()
                        ->options([
                            'good' => 'Good',
                            'damaged' => 'Damage',
                            'lost' => 'Lost'
                        ])->default('good'),
                        Textarea::make('noted')
                        ->label('Notes')
                        ->rows(3),
                    ])
                    ->action(function($record, array $data){
                        DB::transaction(function() use ($record,$data){
                            $returnTime = now();
                            $qty = $record->qty;
                            $asset = $
                        })
                    })


                ActionGroup::make([
                    ViewAction::make(),
                    EditAction::make(),
                    DeleteAction::make(),
                ]),
            ])

            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
