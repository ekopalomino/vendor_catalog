<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $fillable = [
        'reference_id',
        'type_id',
        'sales_order',
        'purchase_order',
        'purchase_amount',
        'purchase_invoice',
        'status_id',
        'created_by',
        'updated_by',
        'payment_received',
        'payment_made',
    ];

    public function Sales()
    {
        return $this->belongsTo(Sale::class,'sales_order','order_ref');
    }

    public function Purchases()
    {
        return $this->belongsTo(Purchase::class,'purchase_order');
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
