<!doctype html>
<html lang="en">
  <head>
    <title>List</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
  </head>
  <body>
    @include("navbar")
    <div class="offset-2 col-md-8">
        <form action="" method="get">
            <div class="offset-4 mt-1 mb-3 col-3">
              <input type="search" name="search" id="search" class="form-control border-dark" placeholder="Search by Name or Email" value="{{$search}}">
              <button class="btn btn-success">Search</button>
              <a href="{{url('admin/list')}}">
                <button class="btn btn-info" type="button">Reset</button></a>
            </div>
        </form>
      <table class="table table-bordered table-striped table-responsive table-hover" style="width: 100%">
        <thead class="bg-info">
          <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Address</th>
            <th>Status</th>
            <th>Created_at</th>
            <th>Updated_at</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($customer as $key)
            <tr>
                <td>{{$key->id}}</td>
                <td>{{$key->name}}</td>
                <td>{{$key->gender}}</td>
                <td>{{$key->email}}</td>
                <td>{{$key->address}}</td>
                <td>
                    @if($key->status == "0")
                       <span class="badge text-dark bg-info"> User </span>
                     @else
                     <span class="badge bg-success"> Admin </span>
                    @endif
                </td>
                <td>{{$key->created_at}}</td>
                <td>{{$key->updated_at->format('d-M-Y')}}</td>
                <td>
                    <a href="{{route('cus.delete', ['id' => $key->id])}}">
                    <button class="btn btn-danger btn-sm">Trash</button>
                    </a>
                    <a href="{{route('cus-edit', ['id' => $key->id])}}">
                    <button class="btn btn-info btn-sm">Edit</button>
                    </a>
                </td>
              </tr>
              @endforeach
        </tbody>
    </table>
    <div class="row">
        <div class="col-md-3">
        {{ $customer->links() }}
        </div>
    </div>

  </body>
</html>
