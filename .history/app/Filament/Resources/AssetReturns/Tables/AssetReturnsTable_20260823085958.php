<?php

namespace App\Filament\Resources\AssetReturns\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class AssetReturnsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                Select::make('ticket_id')
                    ->numeric()
                    ->label('Ticket Number')
                    ->relationship('ticket','ticket_number',(n($query)=>),
                Select::make('user_id')
                    ->numeric()
                    ->label('Verified By')
                    ->relationship('user','name')
                    ->default(Auth::id())
                    ->hidden(),
                Select::make('asset_id')
                    ->numeric()
                    ->label('asset_name')
                    ->relationshi('asset','name'),
                TextColumn::make('qty')
                    ->numeric()
                    ->required()
                    ->default(1)
                    ->readOnly(),
                Select::make('condition')
                    ->options(['good' => 'Good','damaged' => 'Damaged', 'lost' => 'Lost'])
                    ->default('good')
                    ->required(),
                DateTimePicker::make('returned_at')
                    ->required()
                    ->default(fn()=>Carbon::now())
                    ->hidden(),
                Textarea::make('noted')
                    ->default(null)
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
