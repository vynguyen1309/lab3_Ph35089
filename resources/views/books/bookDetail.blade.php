@extends('home')
@section('title', 'Book Detail')
@section('content')


    <div class="container">


        @foreach ($bookDetails as $bookDetail)
            <div class="row ">
                <div class="col m-auto">
                    <p><img width="300px" src="{{ $bookDetail->thumbnail }}" alt="img.jpg"></p>
                </div>
                <div class="col">
                    <h4>Name : {{ $bookDetail->title }}</h4>
                    <p>Author : {{ $bookDetail->author }}</p>
                    <p>Publisher : {{ $bookDetail->publisher }}</p>
                    <p>Publication : {{ $bookDetail->publication }}</p>
                    <p>Price : {{ $bookDetail->price }}d</p>
                    <p>Quantity : {{ $bookDetail->quantity }}</p>
                    <p>Category : {{ $bookDetail->name }}</p>

                </div>
            </div>
        @endforeach




    @endsection
