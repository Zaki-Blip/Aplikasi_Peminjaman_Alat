<?php

namespace App\Filament\Resources\Tickets\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class TicketForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
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
            ]);
    }
}
