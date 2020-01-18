<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = [
    	'invoice_ref',
        'do_ref',
    	'order_ref',
        'customer_id',
    	'pay_method',
    	'pay_term',
    	'terms_no',
    	'tax_id',
    	'tax_amount',
    	'delivery_cost',
        'amount',
    	'status_id',
    	'created_by',
    	'updated_by',
    	'payment_made',
    ];

    public function Customer()
    {
        return $this->belongsTo(Contact::class,'customer_id');
    }

    public function Status()
    {
        return $this->belongsTo(Status::class,'status_id');
    }
}
