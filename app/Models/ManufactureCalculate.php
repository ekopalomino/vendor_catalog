<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class ManufactureCalculate extends Model
{
    protected $fillable = [
        'product_id',
        'material_id',
        'quantity',
        'status_id',
    ];

    public function Materials()
    {
        return $this->belongsTo(Product::class,'material_id');
    }

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'status_id');
    }
}
