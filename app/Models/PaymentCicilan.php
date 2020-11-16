<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentCicilan extends Model
{
    protected $fillable = [
        'cicilan_id',
        'billed',
        'payment',
        'remaining',
    ];

    public function Parent()
    {
        return $this->belongsTo(Payment::class,'cicilan_id');
    }
}
