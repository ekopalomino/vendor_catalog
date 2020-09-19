<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class ReceivePurchaseItem extends Model
{
    protected $fillable = [
    	'receive_id',
    	'product_name',
    	'orders',
    	'received',
    	'damaged',
        'uom_id',
        'sub_total'
    ];

    public function Parent()
    {
    	return $this->belongsTo(ReceivePurchase::class,'receive_id');
    }

    public function Uoms()
    {
    	return $this->belongsTo(UomValue::class,'uom_id');
    }
}
