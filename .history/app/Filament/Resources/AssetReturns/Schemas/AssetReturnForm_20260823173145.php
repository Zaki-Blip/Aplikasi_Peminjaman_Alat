<?php

namespace App\Filament\Resources\AssetReturns\Schemas;

use App\Models\Ticket;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
//use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class AssetReturnForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('ticket_id')
                    ->numeric()
                    ->label('Ticket Number')
                    ->relationship('ticket','ticket_number',function ($query,$operation,$record))(
                        if($operation === 'create'){
                            return $query->where('status','verifying')
                        }
                        $
                    )
                    ->afterStateUpdated(fn($state,$set) => $set('asset_id',Ticket::find($state)?->asset_id))
                    ->live(),
                Select::make('user_id')
                    ->numeric()
                    ->label('Verified By')
                    ->relationship('user','name')
                    ->default(Auth::id())
                    ->hidden()
                    ->dehydrated(),
                Select::make('asset_id')
                    ->numeric()
                    ->label('asset_name')
                    ->relationshi('asset','name')
                    ->dehydrated()
                    ->disabled(),
                TextColumn::make('qty')
                    ->numeric()
                    ->required()
                    ->default(fn(callable $get)=> Ticket::find($get('ticket_id'))?->qty ?? 1)
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
            ]);
    }
}
