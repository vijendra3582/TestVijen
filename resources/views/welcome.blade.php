@extends('layouts.app')
@section('content')
<div class="title m-b-md">
    Laravel
</div>

<div class="links">
    <a href="{{ route('task-one') }}">Task One</a>
    <a href="{{ route('task-two') }}">Task Two</a>
    <a href="{{ route('task-three') }}">Task Three</a>
</div>
@endsection
