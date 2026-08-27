<?php

namespace App\Filament\Resources\ActivityLogs\Pages;

use App\Filament\Resources\ActivityLogsResource;
use Filament\Resources\Pages\ListRecords;
// HAPUS use Spatie\Activitylog\Traits\LogsActivity; jika ada

class ListActivityLogs extends ListRecords
{
    protected static string $resource = ActivityLogsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Tambahkan aksi jika diperlukan
        ];
    }
}
