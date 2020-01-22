<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class ReturItem extends Model
{
    protected $fillable = [
    	'retur_id',
    	'product_name',
    	'sales_qty',
    	'retur_qty',
    	'retur_reason',
    	'notes',
    ];

    public function Retur()
    {
    	return $this->belongsTo(Retur::class,'retur_id');
    }

    public function Reason()
    {
        return $this->belongsTo(ReturReason::class,'retur_reason');
    }
}
