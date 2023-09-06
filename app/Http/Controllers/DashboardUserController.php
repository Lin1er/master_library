<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class DashboardUserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $query = request('search');
    
        $users = User::query()
            ->where('name', 'like', '%' . $query . '%')
            ->orWhere('username', 'like', '%' . $query . '%')
            ->get();

        return view('admins.users.index',[
            'users' => $users
        ]);
        
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admins.users.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $ValidatedData = $request->validate([
            'name' => 'required|max:255',
            'class' => 'required',
            'username' => 'required|min:3|max:255|unique:users',
            'password' => 'required|max:255'
        ]);

        $ValidatedData['password'] = bcrypt($ValidatedData['password']);

        User::create($ValidatedData);

        return redirect('/admins/users')->with('success', 'User has been created successfully.');

    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('admins.users.edit', compact('user'));
    }
    
    

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
    
        $validatedData = $request->validate([
            'name' => 'required',
            'username' => 'required|unique:users,username,'.$user->id,
            'class' => 'required',
            'password' => 'nullable|min:6|confirmed',
        ]);
    
        $user->name = $request->name;
        $user->username = $request->username;
        $user->class = $request->class;
    
        if ($request->password) {
            $user->password = bcrypt($request->password);
        }
    
        $user->save();
    
        return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }
    
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $user = User::find($id);
        if ($user) {
            $user->delete();
            return redirect('/admins/users')->with('success', 'user has been deleted successfully.');
        } else {
            // Redirect atau tampilkan pesan bahwa user tidak ditemukan
        }
    }
}
