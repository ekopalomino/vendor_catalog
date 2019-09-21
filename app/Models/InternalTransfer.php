<?php

namespace Erp\Models;

use Illuminate\Database\Eloquent\Model;

class InternalTransfer extends Model
{
    protected $fillable = [
        'from_id',
        'to_id',
        'created_by',
        'updated_by',
    ];

    public function From()
    {
        return $this->belongsTo(Warehouse::class,'from_id');
    }

    public function To()
    {
        return $this->belongsTo(Warehouse::class,'to_id');
    }
}
