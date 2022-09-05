<!doctype html>
<html lang="en">
  <head>
    @stack("title")
    @stack('style')
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

  </head>
  <body>

        <div class="offset-2 col-md-8">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs justify-content-center" id="navId" role="tablist">
                <li class="nav-item">
                    <a href="{{url('/home')}}" class="nav-link" data-bs-toggle="tab">Home</a>
                </li>
                <li class="nav-item">
                    <a href="{{url('/')}}/about" class="nav-link" data-bs-toggle="tab">About</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a href="{{url('/form')}}/form" class="nav-link" data-bs-toggle="tab">Contact</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a href="#" class="nav-link disabled" data-bs-toggle="tab">Disabled</a>
                </li>
            </ul>
    </div>

