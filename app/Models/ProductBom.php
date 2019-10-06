<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class ProductBom extends Model
{
    protected $fillable = [
        'product_id',
        'material_id',
        'quantity',
        'uom_id',
    ];

    public function Products()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Materials()
    {
        return $this->belongsTo(Product::class,'material_id');
    }

    public function Uoms()
    {
        return $this->belongsTo(UomValue::class,'uom_id');
    }

    public function Manufactures()
    {
        return $this->belongsTo(ManufactureItem::class,'product_id');
    }
}
