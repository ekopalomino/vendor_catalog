<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{
    use Uuid;

    protected $fillable = [
        'order_ref',
        'sales_ref',
        'delivery_service',
        'delivery_cost',
        'receipt',
        'status_id',
        'created_by',
        'updated_by',
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

    public function SalesItem()
    {
        return $this->hasOne(SalesItem::class,'sales_ref');
    }

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'status_id');
    }

    public function Sales()
    {
        return $this->belongsTo(Sale::class,'sales_ref');
    }

    public function Courier()
    {
        return $this->belongsTo(DeliveryService::class,'delivery_service');
    }


}
