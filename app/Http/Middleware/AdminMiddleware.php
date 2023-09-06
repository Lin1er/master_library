<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // Periksa peran pengguna saat ini
        if ($request->user() && $request->user()->role == 1) {
            // Jika peran adalah admin, lanjutkan ke permintaan berikutnya
            return $next($request);
        }
        
        // Jika peran bukan admin, kembali ke halaman sebelumnya dengan pesan error
        return redirect()->back()->with('error', 'Anda tidak memiliki akses ke halaman ini.');
    }
    
}
