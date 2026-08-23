<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AssetFine extends Model
{
    protected $fillable = [
        'asset_return_id',
        'amount',
        'type',
        'noted'
    ];
}
