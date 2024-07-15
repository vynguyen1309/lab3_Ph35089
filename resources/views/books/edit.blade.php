@extends('home')
@section('title', 'Add New')
@section('content')
    <div class="container w-50">
        <h2 class="text-center mt-3">EDIT</h2>
        <form action="{{ route('editForm',  $books->id) }}" method="POST">
            @csrf
            @method('PUT')
            <input type="hidden" name="id" id="" value="{{ $books->id }}">
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input name="title" type="text" class="form-control" id="title" value="{{ $books->title }}">
            </div>
            <div class="mb-3">
                <label for="thumbnail" class="form-label">Thumbnail</label>
                <input name="thumbnail" type="text" class="form-control" id="thumbnail" value="{{ $books->thumbnail }}">
            </div>
            <div class="mb-3">
                <label for="author" class="form-label">Author</label>
                <input name="author" type="text" class="form-control" id="author" value="{{ $books->author }}">
            </div>
            <div class="mb-3">
                <label for="publisher" class="form-label">Publisher</label>
                <input name="publisher" type="text" class="form-control" id="publisher" value="{{ $books->publisher }}">
            </div>
            <div class="mb-3">
                <label for="publication" class="form-label">Publication</label>
                <input name="publication" type="date" class="form-control" id="publication"
                    value="{{ $books->publication }}">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input name="price" type="number" step="0.1" class="form-control" id="price"
                    value="{{ $books->price }}">
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity</label>
                <input name="quantity" type="number" class="form-control" id="quantity" value="{{ $books->quantity }}">
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <select name="category_id" id="" class="form-control">
                    @foreach ($categories as $cate)
                        <option value="{{ $cate->id }}" @if ($cate->id === $books->category_id) selected @endif>
                            {{ $cate->name }}
                        </option>
                    @endforeach

                </select>
            </div>
            <center>

                <button name="" type="submit" class="btn btn-success mb-3">Update</button>
            </center>
        </form>
    </div>


@endsection
