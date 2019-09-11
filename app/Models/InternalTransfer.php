<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class InternalTransfer extends Model
{
    protected $fillable = [
        'product_id',
        'from_id',
        'to_id',
        'amount',
    ];
}
