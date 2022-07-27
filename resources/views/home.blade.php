@extends("layouts.main")
@push('title')
<title> Home </title>
 @endpush
@section("main-content")
<h2 class="text-center">
    Home Page
</h2>
<h1 class="text-center">
    @lang('lang.welcome')
</h1>
<div class="justify-content-center">
    <a href="{{url('/admin/urdu')}}">Urdu</a>
    <a href="{{url('/admin')}}">English</a>
    <a href="{{url('/admin/pashto')}}">Pashto</a>
</div>
@endsection
