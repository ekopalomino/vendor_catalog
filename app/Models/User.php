<?php

namespace iteos\Models;

use iteos\Traits\Uuid;
use iteos\Traits\LockableTrait;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable implements MustVerifyEmail
{
    use Notifiable, Uuid, HasRoles, LockableTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 
        'email', 
        'password',
        'avatar',
        'division_id',
        'status_id',
        'last_login_at',
        'last_login_from',
        'type_id',
        'vendor_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public $incrementing = false;

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'status_id');
    }

    public function Divisions()
    {
        return $this->belongsTo(Division::class,'division_id');
    }

    public function Warehouses()
    {
        return $this->hasMany(UserWarehouse::class);
    }

    public function Child()
    {
        return $this->belongsTo(Contact::class,'user_id','id');
    }
}
