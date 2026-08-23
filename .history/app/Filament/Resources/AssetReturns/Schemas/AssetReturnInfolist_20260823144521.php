<?php

namespace App\Filament\Resources\AssetReturns\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class AssetReturnInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('ticket.')
                    ->label('Ticket Return'),
                TextEntry::make('user_id')
                    ->numeric(),
                TextEntry::make('asset_id')
                    ->numeric(),
                TextEntry::make('qty')
                    ->numeric(),
                TextEntry::make('condition')
                    ->badge(),
                TextEntry::make('returned_at')
                    ->dateTime(),
                TextEntry::make('noted')
                    ->placeholder('-')
                    ->columnSpanFull(),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
