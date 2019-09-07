<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    protected $fillable = [
        'product_id',
        'warehouse_id',
        'min_stock',
        'opening_amount',
        'closing_amount',
    ];

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Locations()
    {
        return $this->belongsTo(Warehouse::class,'warehouse_id');
    }
}
