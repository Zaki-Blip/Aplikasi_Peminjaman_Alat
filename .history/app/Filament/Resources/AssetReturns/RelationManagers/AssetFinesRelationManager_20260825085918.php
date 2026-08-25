<?php

namespace App\Filament\Resources\AssetReturns\RelationManagers;

use Filament\Actions\AssociateAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\CreateAction;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\DissociateAction;
use Filament\Actions\DissociateBulkAction;
use Filament\Actions\EditAction;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class AssetFinesRelationManager extends RelationManager
{
    protected static string $relationship = 'assetFines';

    protected static ?string $title = 'Asset Fines';

    protected static ?string $recordTitleAttribute = 'type';

    public function form(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('type')
                    ->label('Fine Type')
                    ->options([
                        'late' => 'Late Return',
                        'damaged' => 'Damaged',
                        'lost' => 'Lost',
                    ])
                    ->required()
                    ->live()
                    ->afterStateUpdated(function ($state, Set $set, $livewire) {
                        $record = $livewire->ownerRecord;
                        $ticket = $record->ticket;

                        if(!$state || !$ticket)return;
                        if($state === 'lost')
                            {
                                ''
                            }

                    }),

                TextInput::make('amount')
                    ->label('Fine Amount')
                    ->prefix('IDR')
                    ->numeric()
                    ->required(),

                Textarea::make('noted')
                    ->label('Noted')
                    ->rows(3)
                    ->columnSpanFull(),
            ]);
    }

public function table(Table $table): Table
{
    return $table
        ->recordTitleAttribute('type')
        ->columns([
            TextColumn::make('type')
                ->label('Fine Type')
                ->badge()
                ->color(fn (string $state): string => match ($state) {
                    'late' => 'warning',
                    'damaged' => 'warning',
                    'lost' => 'danger',
                    default => 'gray',
                })
                ->formatStateUsing(fn (string $state): string => match ($state) {
                    'late' => 'Late Return',
                    'damaged' => 'Damaged',
                    'lost' => 'Lost',
                    default => ucfirst($state),
                }),

            TextColumn::make('amount')
                ->label('Fine Amount')
                ->numeric()
                ->money('IDR'),

            TextColumn::make('noted')
                ->label('Noted')
                ->limit(30)
                ->wrap(),

            TextColumn::make('created_at')
                ->label('Created At')
                ->dateTime()
                ->since(),
        ])

            ->filters([])

            ->headerActions([
                CreateAction::make(),
                AssociateAction::make(),
            ])

            ->recordActions([
                EditAction::make(),
                DissociateAction::make(),
                DeleteAction::make(),
            ])

            ->toolbarActions([
                BulkActionGroup::make([
                    DissociateBulkAction::make(),
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
