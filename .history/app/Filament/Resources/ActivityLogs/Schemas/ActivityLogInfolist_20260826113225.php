<?php

namespace App\Filament\Resources\ActivityLogs\Schemas;

use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class ActivityLogInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Information')
                    ->schema([
                        j
                    ]),
            ]);
    }
}
