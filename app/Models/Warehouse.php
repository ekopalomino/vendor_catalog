<?php

namespace Erp\Models;

use Erp\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    use Uuid;
    
    protected $fillable = [
        'name',
        'created_by',
        'updated_by',
    ];

    public $incrementing = false;

    public function Author()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }
}
