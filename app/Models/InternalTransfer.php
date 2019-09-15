<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class InternalTransfer extends Model
{
    protected $fillable = [
        'product_id',
        'from_id',
        'to_id',
        'amount',
    ];

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function From()
    {
        return $this->belongsTo(Warehouse::class,'from_id');
    }

    public function To()
    {
        return $this->belongsTo(Warehouse::class,'to_id');
    }
}
