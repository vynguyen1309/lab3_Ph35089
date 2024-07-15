<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('/resources/css/app.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }

        .nav {
            justify-content: center;
            align-items: center;



        }

        .nav ul {
            list-style-type: none;
        }

        .nav ul li a {

            text-decoration: none;
            margin: 10px;


        }

        .nav ul li a:hover {
            color: rgb(255, 94, 94);
            text-decoration: underline;


        }

        h1 {
            margin-bottom: 0 !important;
        }
        .title a{
            text-decoration: none;

        }
        .hr{
            border:3px solid rgb(255, 0, 0);
         margin: 20px auto;
        }

    </style>

    <title>@yield('title')</title>
</head>

<body>
    <div class="container">
        <header class=" bg-dark">
            <div class="header text-center">
                <h1 class="title text-white"><a href="{{route('allBook')}}">BOOK STORE</a></h1>
            </div>
        </header>



