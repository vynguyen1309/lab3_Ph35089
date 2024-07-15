<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    //
    public function showBook()
    {

        //lay tat ca du lieu
        $books = DB::table('books')
            ->join('categories', 'category_id', 'categories.id')
            ->select('books.*', 'name')
            ->orderByDesc('books.id')
            ->get();
        $categories = DB::table('categories')
            ->get();
        return view('books.allBook', compact('books', 'categories'));
    }

    //Detail
    public function detailBook($id)
    {
        $bookDetails = DB::table('books')
            ->join('categories', 'category_id', 'categories.id')
            ->select('books.*', 'name')
            ->where('books.id', $id)
            ->get();
        return view('books.bookDetail', compact('bookDetails', 'id'));
    }

    // Add
    public function addForm()
    {
        // hien thi form
        $categories = DB::table('categories')
            ->get();
        return view('books.add', compact('categories'));
    }
    // luu du lieu tu form
    public function add(Request $request)
    {
        // dd($request->all());
        {
            $data = [
                'title' => $request['title'],
                'thumbnail' => $request['thumbnail'],
                'author' => $request['author'],
                'publisher' => $request['publisher'],
                'publication' => $request['publication'],
                'price' => $request['price'],
                'quantity' => $request['quantity'],
                'category_id' => $request['category_id']

            ];
            DB::table('books')->insert($data);
            return redirect()->route('allBook');
        }
    }

    // delete
    public function delete($id)
    {
        DB::table('books')->delete($id);
        return redirect()->route('allBook');
    }
    // edit
     public function editForm($id){
       $books= DB::table('books')
        ->where('id',$id)
        ->first();
        $categories = DB::table('categories')
        ->get();
        return view('books.edit', compact('books','categories'));

     }
     //update
     public function update(Request $request){
        {
            $data = [
                'title' => $request['title'],
                'thumbnail' => $request['thumbnail'],
                'author' => $request['author'],
                'publisher' => $request['publisher'],
                'publication' => $request['publication'],
                'price' => $request['price'],
                'quantity' => $request['quantity'],
                'category_id' => $request['category_id']

            ];
            DB::table('books')
            ->where('id',$request['id'])
            ->update($data);
            return redirect()->route('allBook');
        }
     }
}
