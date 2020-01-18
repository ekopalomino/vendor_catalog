<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = [
    	'reference_id',
    	'order_ref',
    	'customer_code',
    	'pay_method',
    	'pay_term',
    	'terms_no',
    	'tax_id',
    	'tax_amount',
    	'sales_amount',
    	'invoice_amount',
    	'invoice_remaining',
    	'status_id',
    	'created_by',
    	'updated_by',
    	'payment_made',
    ];
}
