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
  <body>
    <div class="offset-2 col-md-6">
      <form method="post" action="{{url('/')}}/form">
        @csrf
        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <input type="text" class="form-control" name="name" id="name" value="{{old('name')}}" placeholder="Write Your Name">
          <span class="text-danger">
            @error('name')
              {{$message}}
            @enderror
          </span>
          {{-- <small id="helpId" class="form-text text-muted">Help text</small> --}}
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" name="email" id="email" value="{{old('email')}}" placeholder="Write Your Email">
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
            {{-- <small id="helpId" class="form-text text-muted">Help text</small> --}}
        </div>
        <div class="mb-3">
            <label for="cpassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" name="cpassword" id="cpassword" aria-describedby="helpId" placeholder="Confirm Password">
            <span class="text-danger">
                @error('cpassword')
                    {{$message}}
                @enderror
              </span>
            {{-- <small id="helpId" class="form-text text-muted">Help text</small> --}}
        </div>
        <input type="submit" name="submit" value="Submit" id="submit">
      </form>
    </div>
  </body>
</html>
