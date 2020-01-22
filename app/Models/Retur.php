<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Retur extends Model
{
    use Uuid;

    protected $fillable = [
    	'sales_order',
    	'delivery_order',
    	'status_id',
    	'created_by',
    	'approve_by',
    ];

    public $incrementing = false;

    public function Items()
    {
    	return $this->hasMany(ReturItem::class,'retur_id');
    }

    public function Status()
    {
    	return $this->belongsTo(Status::class,'status_id');
    }
}
