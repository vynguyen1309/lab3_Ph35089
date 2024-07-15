<?php

use App\Http\Controllers\BookController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('home');
// });
// Route::get('/', [BookController::class,'showBook'])->name('books.allBook');
// hiển thị tất cả dữ liệu
// category


Route::get('/book',function(){
    $booksdesc = DB::table('books')
    ->join('categories','category_id','categories.id')
    ->select('books.id','books.title','books.thumbnail','books.author','books.publisher','books.publication','books.price','books.quantity','categories.name')
    ->orderBy('price', 'desc')
    ->limit(8)
    ->get();
    // dd($books);
    $booksasc = DB::table('books')
    ->join('categories','category_id','categories.id')
    ->select('books.id','books.title','books.thumbnail','books.author','books.publisher','books.publication','books.price','books.quantity','categories.name')
    ->orderBy('price', 'asc')
    ->limit(8)
    ->get();
    //
    $category=DB::table('categories')
    ->get();

    return view('books.books',compact('booksdesc','booksasc','category'));
})->name('home');
// hiển thị 8 sản phẩm có giá cao nhất
// Route::get('/list-8-desc',function(){
//     $books = DB::table('books')
//     ->orderBy('price', 'desc')
//     ->limit(8)
//     ->get();
//     return view('books',compact('books'));

// });
//8 sp gia thap nhat
// Route::get('/list-8-asc',function(){
//     $books = DB::table('books')
//     ->orderBy('price', 'asc')
//     ->limit(8)
//     ->get();
//     return view('books',compact('books'));

// });
//hien thi sach theo loai

Route::get('category/{id}',function($id){
    // $category_id=$id;
    $category = DB::table('books')
    ->join('categories','category_id','categories.id')
    ->select('books.id','books.title','books.thumbnail','books.author','books.publisher','books.publication','books.price','books.quantity','categories.name')
    ->where('category_id', $id)
    ->get();
    //

return view('categories.bookCate', compact('category', 'id'));

})->name('category');


//chi tiet sach
// Route::get('/book-detail/{id}',function($id){
//     // $id=$id_book;
//     $bookDetails = DB::table('books')
//     ->join('categories','category_id','categories.id')
//     ->select('books.id','books.title','books.thumbnail','books.author','books.publisher','books.publication','books.price','books.quantity','categories.name')
//     ->where('books.id',$id)
//     ->get();
//     // dd($bookDetails);
//     //
//     return view('bookDetail', compact('bookDetails', 'id'));


// })
// ->name('book-detail');

// lab3
Route::get('/', [BookController::class,'showBook'])->name('allBook');
Route::get('/detail/{id}', [BookController::class,'detailBook'])->name('detail');
Route::get('/add',[BookController::class,'addForm'])->name('addForm');
Route::post('/add',[BookController::class,'add'])->name('add');
Route::get('/edit/{id}',[BookController::class,'editForm'])->name('editForm');
Route::put('/edit/{id}',[BookController::class,'update'])->name('update');
Route::delete('/delete/{id}',[BookController::class,'delete'])->name('delete');
