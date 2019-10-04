<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = [
        'order_ref',
        'sales_order',
        'status_id',
        'created_by',
        'updated_by',
        'payment_received',
    ];

    public function Sales()
    {
        return $this->belongsTo(Sale::class,'sales_order');
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
