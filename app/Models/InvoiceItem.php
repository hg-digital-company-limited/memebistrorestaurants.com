<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InvoiceItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'invoice_id', 'dish_id', 'quantity', 'unit_price', 'total_price',
    ];

    public function invoice()
    {
        return $this->belongsTo(Invoice::class);
    }

    public function dish()
    {
        return $this->belongsTo(Dish::class);
    }
}