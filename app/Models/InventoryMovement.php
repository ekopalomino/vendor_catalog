<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class InventoryMovement extends Model
{
    protected $fillable = [
        'reference_id',
        'product_id',
        'in',
        'out',
        'notes',
    ];
}
