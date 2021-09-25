<?php

namespace iteos\Models;

use Illuminate\Database\Eloquent\Model;

class ContactDocument extends Model
{
    protected $fillable = [
        'contact_id',
        'document_type',
        'documents'
    ];

    public function Parent()
    {
        return $this->belongTo(Contact::class,'contact_id');
    }
}
