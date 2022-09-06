<!doctype html>
<html lang="en">
  <head>
    <title>Form</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">

  </head>
  <body class="bg-dark">
    @include("navbar")
    <div class="card offset-3 col-md-6">
        <span class="text-center text-success">{{$title}}</span>
      <form method="post" action="{{$url}}" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <input type="text" class="form-control" name="name" id="name" value="" placeholder="Write Your Name">
          <span class="text-danger">
            @error('name')
              {{$message}}
            @enderror
          </span>
        </div>
        <div class="mb-3">
            <label for="gender" class="form-label">Gender</label>
            <select name="gender" id="" class="form-control form-select">
                <option selected disabled>Choose Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
          </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" name="email" id="email" value="" placeholder="Write Your Email">
            <span class="text-danger">
                @error('email')
                    {{$message}}
                @enderror
              </span>
            {{-- <small id="helpId" class="form-text text-muted">Help text</small> --}}
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" name="address" value="">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="password" id="password" aria-describedby="helpId" placeholder="Write Your Password">
            <span class="text-danger">
                @error('password')
                    {{$message}}
                @enderror
              </span>
            {{-- <small id="helpId" class="form-text text-muted">Help text</small> --}}
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status</label>
            <select name="status" id="" class="form-control form-select">
                <option selected disabled>Choose Status</option>
                <option value="1">Admin</option>
                <option value="0">User</option>
            </select>
          </div>
          <div class="mb-3">
            <label for="image" class="form-label">Image</label>
            <input type="file" class="form-control" name="image" value="">
        </div>
        <div class="">
           <input type="submit" style="width: 100%" class="btn btn-info  btn-block" name="submit" value="Submit" id="submit">
        </div>
    </form>
    </div>
  </body>
</html>
