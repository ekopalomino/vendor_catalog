<?php

namespace Erp\Models;

use Erp\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use Uuid;

    protected $fillable = [
        'product_barcode',
        'name',
        'category_id',
        'uom_id',
        'image',
        'supplier_id',
        'min_stock',
        'base_price',
        'sale_price',
        'active',
        'is_manufacture',
        'is_sale',
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

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'active');
    }

    public function Categories()
    {
        return $this->belongsTo(ProductCategory::class,'category_id');
    }

    public function Uoms()
    {
        return $this->belongsTo(UomValue::class,'uom_id');
    }

    public function Invent()
    {
        return $this->hasMany(Inventory::class,'product_id');
    }

    public function Details()
    {
        return $this->hasMany(ProductBom::class,'product_id');
    }
}
