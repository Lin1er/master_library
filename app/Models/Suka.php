<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Suka extends Model
{
    use HasFactory;

    protected $fillable = [
        'ulasan_id',
        'user_id'
    ];

    public function ulasan(): BelongsTo
    {
        return $this->belongsTo(Ulasan::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
