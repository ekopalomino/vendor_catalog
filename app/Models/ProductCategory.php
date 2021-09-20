<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    protected $fillable = [
        'name',
        'parent_id',
        'created_by',
        'updated_by',
    ];

    public function Author()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }

    public function parent()
    {
        return $this->belongsTo(ProductCategory::class,'parent_id')->where('parent_id',0)->with('parent');
    }

    public function children()
    {
        return $this->hasMany(ProductCategory::class,'parent_id')->with('children');
    }
}
