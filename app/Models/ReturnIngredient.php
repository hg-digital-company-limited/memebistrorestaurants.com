<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReturnIngredient extends Model
{
    use HasFactory;

    protected $fillable = ['ingredient_id', 'returned_quantity', 'reason'];

    public function ingredient()
    {
        return $this->belongsTo(Ingredient::class);
    }
}