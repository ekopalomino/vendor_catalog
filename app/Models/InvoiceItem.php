<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class InvoiceItem extends Model
{
    protected $fillable = [
    	'invoice_id',
    	'product_name',
    	'product_quantity',
    	'uom_id',
    ];
}
