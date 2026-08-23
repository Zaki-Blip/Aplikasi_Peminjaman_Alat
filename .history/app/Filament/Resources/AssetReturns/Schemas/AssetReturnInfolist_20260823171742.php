<?php

namespace App\Filament\Resources\AssetReturns\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Grid;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class AssetReturnInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Transaction Details')
                    ->description('References Information For This Asset Return')
                    ->schema([
                        Grid::make(3)
                        ->schema([
                            TextEntry::make('ticket.ticket_number')
                                ->label('Ticket Return'),
                            TextEntry::make('user.name')
                                ->label('Verified By'),
                             TextEntry::make('returned_at')
                                ->label('Return Date')
                                ->dateTime(),
                        ])
                    ]),
                Section::make('Asset Details')
                ->description('Deatils Of Returned Item and Its State')
                ->schema([
                    Grid::make(3)
                    ->schema([
                        TextEntry::make('asset.name')
                            ->label('Asset Name'),
                        TextEntry::make('qty')
                            ->label('Qty')
                            ->numeric(),
                        TextEntry::make('condition')
                            ->label('Condition')
                            ->badge()
                            ->color(fn(string $state): string => match($state){
                                'good' => 'success',
                                'damaged' =>
                        }),
                    ])
                ]),




                TextEntry::make('created_at')
                    ->dateTime(),
                TextEntry::make('updated_at')
                    ->dateTime(),
            ]);
    }
}
