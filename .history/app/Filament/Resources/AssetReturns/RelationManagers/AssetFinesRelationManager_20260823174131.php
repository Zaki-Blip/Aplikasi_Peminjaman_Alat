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
use Filament\Schemas\Schema;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class AssetFinesRelationManager extends RelationManager
{
    protected static string $relationship = 'assetFines';
    protected static ?string $title = 'Asset Fines';
    protected static ?string $recordTitleAtribute = 'type';

    public function form(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('type')
                    ->label('Fine Type')
                    ->options([
                        'late' => 'Late Return',
                        'damaged' => 'Damaged',
                        'lost' => 'Lost'
                    ])
                    ->live()
                    ->afterStateUpdated(fn($state,$set,$liveware){
                        if($state === 'lost')
                    })
                TextInput::make('amount')
                    ->label('Fine Amount')
                    ->prefix('IDR')
                    ->numeric()
                    ->required(),
                Textarea::make('noted')
                    ->label('noted')
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
                ->color(fn(string $state): string => match($state){
                                'good' => 'success',
                                'damaged' => 'warning',
                                'lost' => 'danger'

                        })
                            ->formatStateUsing(fn(string $state): string => match($state){
                                'good' => 'Good Condition',
                                'damaged' => 'Broken',
                                'lost' => 'Missing  '

                        }),
                TextColumn::make('amout')
                    ->numeric()
                    ->money('IDR'),
                TextColumn::make('noted')
                    ->label('Noted')
                    ->limit(30),
                TextColumn::make('created_at')
                    ->label('Created At')
                    ->dateTime()
            ])
            ->filters([
                //
            ])
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
