<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use Uuid;

    protected $fillable = [
        'name',
        'company',
        'phone',
        'sales_phone',
        'email',
        'billing_address',
        'payment_method',
        'payment_terms',
        'bank_name',
        'account_no',
        'tax',
        'tax_no',
        'created_by',
        'updated_by',
        'active',
        'user_id',
        'fax_number',
        'postal',
        'city',
        'email_confirmation',
        'supplier_id',
        'sales_id',
        'tdp_no'
    ];

    public $incrementing = false;

    public function Author()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }

    public function Methods()
    {
        return $this->belongsTo(PaymentMethod::class,'payment_method');
    }

    public function Terms()
    {
        return $this->belongsTo(PaymentTerm::class,'payment_terms');
    }

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'active');
    }

    public function Users()
    {
        return $this->belongsTo(User::class);
    }
}
