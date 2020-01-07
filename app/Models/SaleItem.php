<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class SaleItem extends Model
{
    protected $fillable = [
        'sales_id',
        'product_id',
        'product_name',
        'quantity',
        'uom_id',
        'discount',
        'sale_price',
        'sub_total',
    ];

    public function Sales()
    {
        return $this->belongsTo(Sale::class,'sales_id');
    }

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Uoms()
    {
        return $this->belongsTo(UomValue::class,'uom_id');
    }
}
