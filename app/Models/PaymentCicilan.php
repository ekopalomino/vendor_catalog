<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentCicilan extends Model
{
    protected $fillable = [
        'payment_id',
        'payment',
        'remaining',
    ];
}
