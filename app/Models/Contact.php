<?php

namespace Erp\Models;

use Erp\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use Uuid;

    protected $fillable = [
        'contact_ref',
        'type_id',
        'name',
        'company',
        'phone',
        'mobile',
        'email',
        'billing_address',
        'shipping_address',
        'method_id',
        'terms_id',
        'tax',
        'tax_no',
        'created_by',
        'updated_by',
        'active',
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
}
