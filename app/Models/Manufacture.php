<?php

namespace Erp\Models;

use Erp\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Manufacture extends Model
{
    use Uuid;

    protected $fillable = [
        'order_ref',
        'product_id',
        'uom_id',
        'quantity',
        'deadline',
        'status_id',
        'warehouse_id',
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

    public function Uoms()
    {
        return $this->belongsTo(UomValue::class,'uom_id');
    }

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Items()
    {
        return $this->hasMany(ManufactureItem::class);
    }

    public function Locations()
    {
        return $this->belongsTo(Warehouse::class,'warehouse_id');
    }
}
