<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Reference extends Model
{
    protected $fillable = [
        'type',
        'month',
        'year',
        'ref_no',
        'pajak',
        'cicilan'
    ];
}
