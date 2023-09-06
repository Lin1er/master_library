<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Borrow;
use App\Models\User;
use App\Models\Category;

class AdminController extends Controller
{
    public function dashboard() {
        return view('admins.index',[
            
        ]);
        
    }

    public function late() {

        $borrows = Borrow::all();

        return view('admins.pages.late',[
            'borrows' => $borrows
        ]);
        
    }
    
}
