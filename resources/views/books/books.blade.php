@extends('home')
@section('title', 'All Book')
@section('content')
    <nav class="nav bg-info">
        <ul>
            <li>
                <a class="text-uppercase text-white"  href="">Tất cả</a>
                @foreach ($category as $cate)
                    <a class="text-uppercase text-white"
                        href="{{ route('category', ['id' => $cate->id]) }}">{{ $cate->name }}</a>
                @endforeach

            </li>
        </ul>
    </nav>

    <div class="container">
        <h2 class="text-center">8 Sản phẩm giá cao nhất </h2>
        <hr class="hr w-50">
        <div class="row">
            @foreach ($booksdesc as $book)
                <div class="col-3 text-center ">
                    <a href="{{ route('book-detail', ['id' => $book->id]) }}" class="text-decoration-none"><img width="150px"
                            src="{{ $book->thumbnail }}" alt=""></a>
                    <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none">
                        <h4>{{ $book->title }}</h4>
                    </a>
                    <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none">
                        <p>{{ $book->price }}đ</p>
                    </a>
                    <div class="bg-info">
                        <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none">
                            <p>Xem chi tiết</p>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
        {{--  --}}
        <h2 class="text-center">8 Sản phẩm giá thấp nhất </h2>
        <hr class="hr w-50">
        <div class="row">
            @foreach ($booksasc as $book)
                <div class="col-3 text-center">
                    <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none"><img
                            width="150px" src="{{ $book->thumbnail }}" alt=""></a>
                    <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none">
                        <h4>{{ $book->title }}</h4>
                    </a>
                    <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none">
                        <p>{{ $book->price }}đ</p>
                    </a>
                    <div class="bg-info">
                        <a href="{{ route('book-detail', ['id' => $book->id]) }}"class="text-decoration-none">
                            <p>Xem chi tiết</p>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>

    </div>


@endsection
