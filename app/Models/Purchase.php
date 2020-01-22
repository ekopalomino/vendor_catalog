<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use Uuid;

    protected $fillable = [
        'order_ref',
        'supplier_id',
        'supplier_code',
        'billing_address',
        'shipping_address',
        'delivery_date',
        'quantity',
        'total',
        'status',
        'created_by',
        'updated_by',
    ];

    public $incrementing = false;

    public function Suppliers()
    {
        return $this->belongsTo(Contact::class,'supplier_id');
    }

    public function Author()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function purchaseItems()
    {
        return $this->hasMany(PurchaseItem::class);
    }

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'status');
    }
}
