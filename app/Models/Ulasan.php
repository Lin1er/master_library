<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;


class Ulasan extends Model
{
    use HasFactory;

    protected $fillable = [
        'book_id',
        'user_id',
        'ulasan',
    ];

    public function sukas()
    {
        return $this->hasMany(Suka::class);
    }

    public function book()
    {
        return $this->belongsTo(Book::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
