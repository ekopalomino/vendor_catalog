<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class ManufactureItem extends Model
{
    protected $fillable = [
        'manufacture_id',
        'item_id',
        'quantity',
    ];

    public function Manufactures()
    {
        return $this->belongsTo(Manufacture::class,'manufacture_id');
    }
}
