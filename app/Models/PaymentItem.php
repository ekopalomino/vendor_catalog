<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentItem extends Model
{
    protected $fillable = [
    	'payment_id',
    	'product_name',
    	'quantity',
		'uom_id',
		'subtotal',
		'tax_amount',
	];
	
	public function Uoms()
	{
		return $this->belongsTo(UomValue::class,'uom_id');
	}

	public function Parent()
    {
        return $this->belongsTo(Payment::class,'payment_id');
    }
}
