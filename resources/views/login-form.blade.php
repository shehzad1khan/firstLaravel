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
        <span class="text-center text-danger">Login here</span>
      <form method="post" action="{{url('login')}}">
        @csrf
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
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="password" id="password" aria-describedby="helpId" placeholder="Write Your Password">
            <span class="text-danger">
                @error('password')
                    {{$message}}
                @enderror
              </span>
            <!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
        </div>
        <div class="">
           <input type="submit" style="width: 100%" class="btn btn-info  btn-block" name="submit" value="Submit" id="submit">
        </div>
    </form>
    </div>
  </body>
</html>
