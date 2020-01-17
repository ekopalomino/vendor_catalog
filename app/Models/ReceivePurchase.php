<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class ReceivePurchase extends Model
{
    use Uuid;

    protected $fillable = [
        'ref_no',
    	'order_ref',
    	'warehouse',
    	'status_id',
    ];

    public $incrementing = false;

    public function Child()
    {
    	return $this->hasMany(ReceivePurchaseItem::class,'receive_id');
    }

    public function Status()
    {
        return $this->belongsTo(Status::class,'status_id');
    }
}
