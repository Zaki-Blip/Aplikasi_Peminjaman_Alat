<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    protected $fillable = [
        'category_id',
        'name',
        'code',
        'total_qty',
        'good_qty',
        'barrowed_qty',
        'lost_qty',
        'is_available'
    ];
    public function Category
    {
        return $this->
    }
}
