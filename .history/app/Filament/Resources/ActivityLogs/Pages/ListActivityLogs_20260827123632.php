<?php

namespace App\Filament\Resources\ActivityLogs\Pages;

use App\Filament\Resources\ActivityLogs\ActivityLogResource;
//use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;
use Spatie\Activitylog\LogOptions;
//use Spatie\Activitylog\Traits\LogsActivity;

class ListActivityLogs extends ListRecords
{

    protected static string $resource = ActivityLogResource::class;

    protected function getHeaderActions(): array
    {
        return [
            //
        ];
    }
}
