<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                margin: 0;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }
            
            .links {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 52px;
                border-bottom: 2px solid;
                margin-bottom: 1rem;
            }
            
            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            
            .form {
                float: left;
                text-align: left;
                width: 80%;
                padding: 70px;
                margin: auto;
            }
            
            .form-group {
                float: left;
                width: 100%;
                margin-bottom: 1rem;
            }
            
            label {
                float: left;
                width: 100%;
                font-weight: bold;
                color: #000;
            }
            input {
                float: left;
                padding: 9px 6px;
                border: 1px solid lightgray;
                border-radius: 3px;
                width: 100%;
            }
            
            form {
                width: 460px;
            }
            
            button {
                padding: 11px 35px;
                background: #2196F3;
                color: #fff;
                border-color: #fff;
                border: 1px solid;
                font-size: 1rem;
                font-weight: 500;
                letter-spacing: 2px;
                border-radius: 3px;
                cursor:pointer;
            }
            
            h4.title {
                text-align: center;
                color: #000;
                font-size: 1.5rem;
                margin-top: 2rem;
                float: left;
                width: 100%;
            }
            
            span.invalid-feedback {
                float: left;
                width: 100%;
                margin-top: 2px;
                color: tomato;
            }
            
            .products {
                float: left;
                width: 100%;
            }
            
            .products ul {
                float: left;
                padding: 0;
                width: 100%;
                text-align: left;
                list-style: none;
            }
            
            .products ul li {
                float: left;
                width: 100%;
                padding: 10px;
                color: #000;
            }
            
            .products ul li strong {
                float: left;
                width: 30%;
            }
            
            .products ul li span {
                float: left;
                width: 70%;
            }
            
            h4.title-pr {
                float: left;
                padding-left: 10px;
                font-size: 1.4rem;
                color: #000;
            }
            
            .products {
                float: left;
                width: 100%;
            }
            
            .seperator::after {
                float: left;
                width: 100%;
                border-bottom: 2px solid;
                content: '';
                margin-top: 2rem;
            }
            
            .filter form {
                float: left;
                width: 100%;
            }
            
            .filter form input {
                float: left;
                width: 100%;
            }
            
            .form-group-p {
                float: left;
                width: 100%;
                margin-right: 0;
                text-align: left;
                margin-bottom: 2rem;
            }
            
            .half {
                float: left;
                width: 50%;
            }
            
            select {
                float: left;
                width: 100%;
                padding: 8px 10px;
                border: 1px solid lightgray;
                border-radius: 3px;
                cursor:pointer;
            }
            
            .filter {
                float: left;
                width: 24%;
                border: 1px solid lightgray;
                padding: 0px 21px;
                padding-bottom: 14px;
            }
            
            .data {
                float: left;
                width: 70%;
            }
            
            option {
                padding: 6px;
            }
        </style>
    </head>
    <body>
        <div class="links">
            <a href="{{ route('task-one') }}" target="_blank">Task One</a>
            <a href="{{ route('task-two') }}" target="_blank">Task Two</a>
            <a href="{{ route('task-three') }}" target="_blank">Task Three</a>
        </div>
        <div class="flex-center position-ref full-height">
        <div class="content">
            @yield('content')
        </div>
    </div>
</body>
</html>
