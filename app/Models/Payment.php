<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $fillable = [
        'reference_id',
        'order_ref',
        'supplier_code',
        'pay_method',
        'pay_term',
        'terms_no',
        'tax_id',
        'tax_amount',
        'purchase_amount',
        'pay_amount',
        'pay_left',
        'status_id',
        'created_by',
        'updated_by',
        'payment_made',
    ];

    public function Purchases()
    {
        return $this->belongsTo(Purchase::class,'purchase_order');
    }

    public function Suppliers()
    {
        return $this->belongsTo(Contact::class,'supplier_code','ref_id');
    }
    public function Statuses()
    {
        return $this->belongsTo(Status::class,'status_id');
    }

    public function Author()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }
}
