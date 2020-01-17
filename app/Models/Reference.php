<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Reference extends Model
{
    protected $fillable = [
        'type',
        'ref_no',
    ];
}
