@extends('home')
@section('title', 'All Book')
@section('content')
    <nav class="nav bg-info">
        <ul>
            <li class="mt-3">
                {{-- <a class="text-uppercase text-white" href="">Tất cả</a> --}}
                @foreach ($categories as $cate)
                    <a class="text-uppercase text-white"
                        href="{{ route('category', ['id' => $cate->id]) }}">{{ $cate->name }}</a>
                @endforeach

            </li>
        </ul>
    </nav>

    {{-- <h1>Danh sách sản phẩm</h1> --}}
    <a class="btn btn-success mt-2" href="{{ route('addForm') }}">Add New Book</a>

    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Thumbnail</th>
                <th>Author</th>
                <th>Publisher</th>
                <th>Publication</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($books as $book)
                <tr>
                    <td>{{ $book->id }}</td>
                    <td>{{ $book->title }}</td>
                    <td><img width="100px" src="{{ $book->thumbnail }}" alt="img.jpg"></td>
                    <td>{{ $book->author }}</td>
                    <td>{{ $book->publisher }}</td>
                    <td>{{ $book->publication }}</td>
                    <td>{{ number_format($book->price) }}</td>
                    <td>{{ $book->quantity }}</td>
                    <td>{{ $book->name }}</td>
                    <td><a class="btn btn-info" href="{{ route('detail', ['id' => $book->id]) }}">Detail</a></td>
                    <td><a class="btn btn-warning" href="{{ route('update', ['id' => $book->id]) }}">Edit</a></td>
                    <td>
                        <form action="{{ route('delete', ['id' => $book->id]) }}" method="post">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm không?')">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach

        </tbody>
    </table>



@endsection
