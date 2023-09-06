<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Borrow;
use App\Models\Queue;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'class',
        'username',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function borrow()
    {
        return $this->hasMany(Borrow::class);
    }

    public function queue() 
    {
        return $this->hasMany(Queue::class);
    }

    public function borrowHistories()
    {
        return $this->hasMany(BorrowHistory::class);
    }

    public function sukas()
    {
        return $this->hasMany(Suka::class);
    }

    public function ulasans()
    {
        return $this->hasMany(ulasan::class);
    }
}
