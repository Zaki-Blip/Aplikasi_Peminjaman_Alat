<?php

namespace App\Filament\Resources\Tickets;

use App\Filament\Resources\Tickets\Pages\CreateTicket;
use App\Filament\Resources\Tickets\Pages\EditTicket;
use App\Filament\Resources\Tickets\Pages\ListTickets;
use App\Filament\Resources\Tickets\Pages\ViewTicket;
use App\Filament\Resources\Tickets\Schemas\TicketForm;
use App\Filament\Resources\Tickets\Schemas\TicketInfolist;
use App\Filament\Resources\Tickets\Tables\TicketsTable;
use App\Models\Ticket;
use BackedEnum;
use Filament\Resources\Resource;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use Filament\Schemas\Schema;
use Filament\Tables\Table;
//use Illuminate\Support\Facades\Auth;

class TicketResource extends Resource
{
    public static function getEloquentQuery(): Builder
{
    $query = parent::getEloquentQuery();

    // Super Admin & Staff lihat semua tiket
    if (Auth::user()?->hasAnyRole(['super_admin', 'staff'])) {
        return $query;
    }

    // Student cuma lihat tiket yang dia buat sendiri
    return $query->where('user_id', Auth::id());
}
    protected static ?string $model = Ticket::class;

    protected static string|BackedEnum|null $navigationIcon = 'heroicon-o-ticket';
    protected static string|BackedEnum|null $activeNavigationIcon = 'heroicon-s-ticket';

    protected static ?string $recordTitleAttribute = 'id';

    public static function form(Schema $schema): Schema
    {
        return TicketForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return TicketInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return TicketsTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListTickets::route('/'),
            'create' => CreateTicket::route('/create'),
            'view' => ViewTicket::route('/{record}'),
            'edit' => EditTicket::route('/{record}/edit'),
        ];
    }

}
