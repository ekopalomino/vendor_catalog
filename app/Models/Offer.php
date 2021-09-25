<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    use Uuid;

    protected $fillable = [
        'ref_id',
        'offer_name',
        'offer_quantity',
        'status',
        'offer_closing',
        'created_by',
        'updated_by'
    ];

    public $incrementing = false;
}
