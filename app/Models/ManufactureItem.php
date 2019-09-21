<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class ManufactureItem extends Model
{
    protected $fillable = [
        'manufacture_id',
        'item_id',
        'quantity',
        'uom_id',
    ];

    public function Parent()
    {
        return $this->belongsTo(Manufacture::class,'manufacture_id');
    }

    public function Items()
    {
        return $this->belongsTo(Product::class,'item_id');
    }

    public Function Uoms()
    {
        return $this->belongsTo(UomValue::class,'uom_id');
    }
}
