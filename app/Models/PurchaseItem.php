<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseItem extends Model
{
    protected $fillable = [
        'purchase_id',
        'product_name',
        'quantity',
        'uom_id',
        'discount',
        'purchase_price',
        'sub_total',
    ];

    public function Uoms()
    {
         return $this->belongsTo(UomValue::class,'uom_id');
    }
}
