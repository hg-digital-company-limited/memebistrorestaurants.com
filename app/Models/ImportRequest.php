<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ImportRequest extends Model
{
    use HasFactory;

    protected $fillable = ['request_date', 'requested_by', 'status'];

    public function details()
    {
        return $this->hasMany(ImportRequestDetail::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'requested_by');
    }
}