<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    protected $fillable = [
        'category_id',
        'name',
        'code',
        'description',
        'image',
        'is_available',

        'total_qty',
        'good_qty',
        'damaged_qty',
        'borrowed_qty',
        'lost_qty',
        'available_qty',
        'purchase_price',
        'procurement_year',
        'funding_source'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }
    public function AssetReturn(){
        return $this->hasMany(AssetReturn::class);
    }
}
