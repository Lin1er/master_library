<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;


class DashboardCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::all();
        return view('admins.categories.index',[
            'categories' => $categories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admins.categories.create',[

        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $ValidatedData = $request->validate([
            'name' => 'required',
            'slug' => 'required'
        ]);

        $category = new Category;
        $category->name = $request->name;
        $category->slug = $request->slug;
        $category->save();

        return redirect('/admins/categories')->with('success', 'Category has been created successfully.');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $category = Category::findOrFail($id);
        return view('admins.categories.edit', compact('category'));
    }
    
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $category = Category::findOrFail($id);
    
        $validatedData = $request->validate([
            'name' => 'required',
            'slug' => 'required'
        ]);
    
        $category->update($validatedData);
    
        return redirect()->route('categories.index')->with('success', 'Category updated successfully.');
    }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $category = Category::find($id);
        if ($category) {
            $category->delete();
            return redirect('/admins/categories')->with('success', 'category has been deleted successfully.');
        } else {
            // Redirect atau tampilkan pesan bahwa category tidak ditemukan
        }
    }

}
