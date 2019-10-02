<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class SaleItem extends Model
{
    protected $fillable = [
        'sales_id',
        'product_id',
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
}
