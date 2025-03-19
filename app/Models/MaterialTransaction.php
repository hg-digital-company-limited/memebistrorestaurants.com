<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MaterialTransaction extends Model
{
    use HasFactory;

    // Các cột có thể được gán hàng loạt
    protected $fillable = [
        'ingredient_id', 'reason', 'quantity', 'type'
    ];

    // Quan hệ với model Ingredient
    public function ingredient()
    {
        return $this->belongsTo(Ingredient::class);
    }
}