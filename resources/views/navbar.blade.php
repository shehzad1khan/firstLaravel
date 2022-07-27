<!doctype html>
<html lang="en">
  <head>
    {{-- <title>Title</title> --}}
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">

  </head>
  <body>

<div class="col-md-12 ">
    <nav class="navbar navbar-expand-lg bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand text-white" href="#">Laravel</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link text-white active" aria-current="page" href="{{url('/admin/home')}}">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="{{url('admin/about')}}">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="{{url('/admin/list')}}">List</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="{{url('/admin/form')}}">Form</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="{{url('/admin/trash')}}">Trash Folder</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown link
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
</div>

  </body>
</html>
