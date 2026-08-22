<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    protected $fillable = [
        'user_id',
        'asset_id',
        'ticket_number',
        'qty',
        'booked_at',
        'borrowed_at',
        ''
    ]
}
