<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    protected $fillable = [
        'product_id',
        'product_name',
        'warehouse_name',
        'min_stock',
        'opening_amount',
        'closing_amount',
        'status_id',
    ];

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Locations()
    {
        return $this->belongsTo(Warehouse::class,'warehouse_id');
    }

    public function Parent()
    {
        return $this->hasMany(InventoryMovement::class);
    }
}
