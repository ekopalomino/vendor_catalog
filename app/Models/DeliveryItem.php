<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class DeliveryItem extends Model
{
    protected $fillable = [
        'delivery_id',
        'product_name',
        'product_quantity',
        'uom_id',
    ];
}
