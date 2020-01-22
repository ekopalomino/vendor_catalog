<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class UserWarehouse extends Model
{
    protected $fillable = [
        'user_id',
        'warehouse_name',
    ];

    public function Users()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
