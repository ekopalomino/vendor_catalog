<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class DeliveryService extends Model
{
    protected $fillable = [
        'delivery_name',
        'created_by',
        'updated_by',
    ];
}
