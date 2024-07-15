@extends('home')
@section('title', 'Add New')
@section('content')
    <div class="container w-50">
        <h2 class="text-center mt-3">Add New Book</h2>
        <form action="{{ route('addForm') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input name="title" type="text" class="form-control" id="title">
            </div>
            <div class="mb-3">
                <label for="thumbnail" class="form-label">Thumbnail</label>
                <input name="thumbnail" type="text" class="form-control" id="thumbnail">
            </div>
            <div class="mb-3">
                <label for="author" class="form-label">Author</label>
                <input name="author" type="text" class="form-control" id="author">
            </div>
            <div class="mb-3">
                <label for="publisher" class="form-label">Publisher</label>
                <input name="publisher" type="text" class="form-control" id="publisher">
            </div>
            <div class="mb-3">
                <label for="publication" class="form-label">Publication</label>
                <input name="publication" type="date" class="form-control" id="publication">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input name="price" type="number" step="0.1" class="form-control" id="price">
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity</label>
                <input name="quantity" type="number" class="form-control" id="quantity">
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <select name="category_id" id="" class="form-control">
                    @foreach ($categories as $cate)
                        <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                    @endforeach

                </select>
            </div>
            <center>

                <button name="" type="submit" class="btn btn-success mb-3">Add</button>
            </center>
        </form>
    </div>


@endsection
