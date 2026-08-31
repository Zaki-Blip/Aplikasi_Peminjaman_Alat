<?php

namespace App\Filament\Resources\Tickets\Tables;

use App\Models\AssetFine;
use App\Models\AssetReturn;
use App\Models\User;
use Filament\Actions\Action;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

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

            ->filters([])

            ->recordActions([
                // APPROVE PEMINJAMAN — hanya Super Admin
                Action::make('approvedBorrowing')
                    ->label('Approve Borrowing')
                    ->color('warning')
                    ->requiresConfirmation()
                    ->visible(function ($record) {
                        /** @var User|null $user */
                        $user = Auth::user();

                        return $record->status === 'booked'
                            && $user?->hasAnyRole(['super_admin']);
                    })
                    ->action(
                        fn ($record) => $record->update([
                            'status' => 'borrowed',
                            'borrowed_at' => now(),
                        ])
                    )
                    ->button(),

                // TOLAK PEMINJAMAN — hanya Super Admin
                Action::make('cancelBorrowing')
                    ->label('Reject')
                    ->color('danger')
                    ->requiresConfirmation()
                    ->visible(function ($record) {
                        /** @var User|null $user */
                        $user = Auth::user();

                        return $record->status === 'booked'
                            && $user?->hasAnyRole(['super_admin']);
                    })
                    ->action(
                        fn ($record) => $record->update([
                            'status' => 'cancelled',
                        ])
                    )
                    ->button(),

                // USER MENGAJUKAN PENGEMBALIAN — hanya pemilik tiket (student) atau Super Admin
                Action::make('verifyReturn')
                    ->label('Return')
                    ->color('info')
                    ->requiresConfirmation()
                    ->visible(function ($record) {
                        /** @var User|null $user */
                        $user = Auth::user();

                        if ($record->status !== 'borrowed' || !$user) {
                            return false;
                        }

                        return $user->hasAnyRole(['super_admin'])
                            || $user->id === $record->user_id;
                    })
                    ->action(
                        fn ($record) => $record->update([
                            'status' => 'verifying',
                        ])
                    )
                    ->button(),

                // ADMIN MEMPROSES PENGEMBALIAN — hanya Super Admin
                Action::make('completed')
                    ->label('Completed')
                    ->color('success')
                    ->requiresConfirmation()
                    ->visible(function ($record) {
                        /** @var User|null $user */
                        $user = Auth::user();

                        return $record->status === 'verifying'
                            && $user?->hasAnyRole(['super_admin']);
                    })

                    ->schema([
                        Select::make('condition')
                            ->label('Asset Condition')
                            ->required()
                            ->options([
                                'good' => 'Good',
                                'damaged' => 'Broken',
                                'lost' => 'Lost',
                            ])
                            ->default('good'),

                        Textarea::make('noted')
                            ->label('Notes')
                            ->rows(3),
                    ])

                    ->action(function ($record, array $data) {
                        DB::transaction(function () use ($record, $data) {

                            $returnTime = now();

                            $qty = $record->qty;

                            $asset = $record->asset;

                            $price = $asset?->purchase_price ?? 0;

                            /*
                             * Update ticket
                             */
                            $record->update([
                                'status' => 'returned',
                                'returned_at' => $returnTime,
                            ]);

                            /*
                             * Simpan data pengembalian
                             */
                            $assetReturn = AssetReturn::create([
                                'ticket_id' => $record->id,
                                'user_id' => $record->user_id,
                                'asset_id' => $record->asset_id,
                                'qty' => $qty,
                                'condition' => $data['condition'],
                                'noted' => $data['noted'] ?? null,
                                'returned_at' => $returnTime,
                            ]);

                            /*
                             * Hitung keterlambatan
                             */
                            $lateDays = 0;

                            if ($record->due_at) {
                                $lateDays = $record->due_at
                                    ->startOfDay()
                                    ->diffInDays(
                                        $returnTime->startOfDay(),
                                        false
                                    );
                            }

                            /*
                             * Denda keterlambatan
                             * 1% dari harga aset x jumlah barang x jumlah hari
                             */
                            if ($lateDays > 0) {
                                AssetFine::create([
                                    'asset_return_id' => $assetReturn->id,
                                    'type' => 'late',
                                    'amount' => ($price * $qty * 0.01) * $lateDays,
                                    'noted' => "Late {$lateDays} days",
                                ]);
                            }

                            /*
                             * Denda berdasarkan kondisi aset
                             */
                            $fineRates = [
                                'damaged' => [
                                    'type' => 'damaged',
                                    'rate' => 0.30,
                                ],

                                'lost' => [
                                    'type' => 'lost',
                                    'rate' => 1.00,
                                ],
                            ];

                            if (isset($fineRates[$data['condition']])) {

                                $fine = $fineRates[$data['condition']];

                                AssetFine::create([
                                    'asset_return_id' => $assetReturn->id,
                                    'type' => $fine['type'],
                                    'amount' => ($price * $qty) * $fine['rate'],
                                    'noted' => 'Asset ' . ucfirst($data['condition']),
                                ]);
                            }
                        });
                    })

                    ->modalHeading('Asset Return')
                    ->modalSubmitActionLabel('Confirm Return')
                    ->modalWidth('md')
                    ->button(),
            ])

            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
