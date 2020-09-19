<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $fillable = [
        'reference_no',
        'type_id',
        'contact_id',
        'terms_no',
        'sales_order',
        'purchase_order',
        'warehouse_ref',
        'subtotal',
        'amount',
        'tax_total',
        'delivery_cost',
        'status_id',
        'created_by',
        'release_by',
        'payment_received',
        'payment_made',
    ];

    public function Purchases()
    {
        return $this->belongsTo(Purchase::class,'purchase_order');
    }

    public function Contacts()
    {
        return $this->belongsTo(Contact::class,'contact_id');
    }
    public function Status()
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

    public function Child()
    {
        return $this->hasMany(PaymentItem::class,'payment_id');
    }
}
