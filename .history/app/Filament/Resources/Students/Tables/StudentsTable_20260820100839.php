<?php

namespace App\Filament\Resources\Students\Tables;

use Filament\Actions\ActionGroup;
//use Filament\Actions\BulkActionGroup;
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
use Filament\Tables\Filters\SelectFilter;

class StudentsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->contentGrid([
                'xl' => 4,
                'lg' => 3,
                'md' => 3,
                'sm' => 2, // Tambahkan untuk responsive
            ])
            ->columns([
                Grid::make([
                    'default' => 1
                ])->schema([
                    Stack::make([
                        // Profile Picture
                        ImageColumn::make('profile_picture')
                            ->label('')
                            ->disk('public')
                            ->width(80)
                            ->height(80)
                            ->circular()
                            ->defaultImageUrl(fn ($record) =>
                                'https://ui-avatars.com/api/?name=' .
                                urlencode($record->user?->name ?? 'Student') .
                                '&background=random&size=80'
                            ),

                        // Nama Student dengan format yang lebih baik
                        TextColumn::make('user.name')
                            ->label('')
                            ->sortable()
                            ->weight(FontWeight::Bold)
                            ->searchable()
                            ->extraAttributes([
                                'class' => 'text-center mt-2'
                            ]),

                        // NISN dengan ikon yang sesuai
                        TextColumn::make('nisn')
                            ->label('NISN')
                            ->icon(Heroicon::Identification)
                            ->searchable()
                            ->sortable()
                            ->extraAttributes([
                                'class' => 'text-sm'
                            ]),

                        // Class dengan ikon yang sesuai
                        TextColumn::make('classroom.name')
                            ->label('Class')
                            ->icon(Heroicon::BuildingOffice)
                            ->sortable()
                            ->extraAttributes([
                                'class' => 'text-sm'
                            ]),

                        // Phone dengan ikon yang sesuai
                        TextColumn::make('phone_number')
                            ->label('Phone')
                            ->icon(Heroicon::Phone)
                            ->searchable()
                            ->extraAttributes([
                                'class' => 'text-sm'
                            ]),

                        // Gender dengan badge yang lebih informatif
                        TextColumn::make('gender')
                            ->label('Gender')
                            ->badge()
                            ->color(fn (string $state): string => match ($state) {
                                'male' => 'primary',
                                'female' => 'danger',
                                default => 'gray',
                            })
                            ->formatStateUsing(fn (string $state): string =>
                                $state === 'male' ? '👤 Male' : '👩 Female'
                            )
                            ->searchable()
                            ->extraAttributes([
                                'class' => 'text-center'
                            ]),
                    ])->extraAttributes([
                        'class' => 'bg-white dark:bg-gray-800 shadow-md rounded-lg p-4 hover:shadow-lg transition-shadow duration-200 border border-gray-200 dark:border-gray-700'
                    ]),
                ]),

                // Timestamps dengan format yang sesuai gambar
                TextColumn::make('created_at')
                    ->label('Created')
                    ->dateTime('M d, Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: false)
                    ->extraAttributes([
                        'class' => 'text-xs text-gray-500'
                    ]),

                TextColumn::make('created_at_time')
                    ->label('Time')
                    ->getStateUsing(fn ($record) => $record->created_at->format('H:i:s'))
                    ->toggleable(isToggledHiddenByDefault: false)
                    ->extraAttributes([
                        'class' => 'text-xs text-gray-500'
                    ]),

                TextColumn::make('updated_at')
                    ->label('Updated')
                    ->dateTime('M d, Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: false)
                    ->extraAttributes([
                        'class' => 'text-xs text-gray-500'
                    ]),

                TextColumn::make('updated_at_time')
                    ->label('Time')
                    ->getStateUsing(fn ($record) => $record->updated_at->format('H:i:s'))
                    ->toggleable(isToggledHiddenByDefault: false)
                    ->extraAttributes([
                        'class' => 'text-xs text-gray-500'
                    ]),
            ])
            ->filters([
                SelectFilter::make('gender')
                    ->label('Filter by Gender')
                    ->options([
                        'male' => 'Male',
                        'female' => 'Female',
                    ])
                    ->placeholder('All Genders'),

                SelectFilter::make('classroom_id')
                    ->label('Filter by Class')
                    ->relationship('classroom', 'name')
                    ->placeholder('All Classes'),
            ])
            ->recordActions([
                ViewAction::make()
                    ->label('View'),
                ActionGroup::make([
                    EditAction::make()
                        ->label('Edit'),
                    DeleteAction::make()
                        ->label('Delete'),
                ])
                ->label('Actions')
                ->icon(Heroicon::EllipsisVertical)
            ])
            ->bulkActions([
                DeleteBulkAction::make()
                    ->label('Delete Selected'),
            ])
            ->defaultSort('created_at', 'desc')
            ->striped()
            ->paginated([
                12,
                24,
                48,
                96,
            ]);
    }
}
