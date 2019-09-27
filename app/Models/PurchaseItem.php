<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseItem extends Model
{
    protected $fillable = [
        'purchase_id',
        'product_id',
        'quantity',
        'uom_id',
        'discount',
        'purchase_price',
        'sub_total',
    ];

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Uoms()
    {
         return $this->belongsTo(UomValue::class,'uom_id');
    }
}
