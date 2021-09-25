<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use Uuid;

    protected $fillable = [
        'category_id',
        'supplier_id',
        'image',
        'created_by',
        'updated_by',
    ];

    public $incrementing = false;

    public function Categories()
    {
        return $this->belongsTo(ProductCategory::class,'category_id');
    }
}
