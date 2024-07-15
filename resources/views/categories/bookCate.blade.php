@extends('home')
@section('title', 'All Book')
@section('content')


{{-- <nav class="nav bg-info">
    <ul>
        <li>
            @foreach ($category as $cate)
                <a class="text-uppercase text-white"
                    href="{{ route('category', ['id' => $cate->id]) }}">{{ $cate->name }}</a>
            @endforeach
        </li>
    </ul>
</nav> --}}

    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Thumbnail</th>
                {{-- <th>Author</th>
                <th>Publisher</th>
                <th>Publication</th> --}}
                <th>Price</th>
                {{-- <th>Quantity</th> --}}
                {{-- <th>Category</th> --}}
                <th>Category</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($category as $book)
                <tr>
                    <td>{{ $book->id }}</td>
                    <td>{{ $book->title }}</td>
                    <td><img width="100px" src="{{ $book->thumbnail }}" alt="img.jpg"></td>
                    {{-- <td>{{ $book->author }}</td>
                <td>{{ $book->publisher }}</td>
                <td>{{ $book->publication }}</td> --}}
                    <td>{{ $book->price }}</td>
                    {{-- <td>{{ $book->quantity}}</td> --}}
                    <td>{{ $book->name}}</td>
                    <td><a href="{{ route('book-detail', ['id' => $book->id]) }}">Xem chi tiết</a></td>
                </tr>
            @endforeach

        </tbody>
    </table>



@endsection
