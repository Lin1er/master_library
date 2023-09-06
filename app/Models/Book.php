<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use App\Models\Category;
use App\Models\Borrow;
use App\Models\Queue;
use App\Models\Ulasan;

class Book extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_id',
        'title',
        'thumbnail_url',
        'pdf_url',
        'author',
        'synopsis',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    
    public function borrow() 
    {
        return $this->hasOne(Borrow::class);
    }

    public function queue() 
    {
        return $this->hasMany(Queue::class);
    }

    public function borrowHistories()
    {
        return $this->hasMany(BorrowHistory::class);
    }
    
    public function ulasans()
    {
        return $this->hasMany(ulasan::class);
    }

}
