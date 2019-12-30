<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class WorkItem extends Model
{
    protected $fillable = [
        'item_id',
        'material_id',
        'quantity',
    ];

    public function Materials()
    {
        return $this->belongsTo(Product::class,'material_id');
    }
}
