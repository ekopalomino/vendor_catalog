<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentItem extends Model
{
    protected $fillable = [
    	'payment_id',
    	'product_name',
    	'product_amount',
    	'uom_id',
    ];
}
