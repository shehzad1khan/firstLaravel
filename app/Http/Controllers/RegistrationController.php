<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Contracts\Session\Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Pagination\Paginator;

class RegistrationController extends Controller
{
    public function form()
    {
        $url = url('/admin/insert');
        $title = "Register Customer";
        $data = compact('url', 'title');
        return view('form')->with($data);
    }

    public function register(Request $request)
    {
        $request->validate(
            [
                'image' => 'required|image|mimes:png,jpg,jpeg|max:2048',
                'name' => 'required',
                'gender' => 'required',
                'email' => 'required|email',
                'address' => 'required',
                'password' => 'required|',
                'status' => 'required'
            ]
        );
        echo '<pre>';
        print_r($request->all());
        //  Insert Query in Laravel
        $customer = new Customer();
        $customer->name = $request['name'];
        $customer->gender = $request['gender'];
        $customer->email = $request['email'];
        $customer->address = $request['address'];
        $customer->password = md5($request['password']);
        $customer->status = $request['status'];

        $image = $request->file('image');
        $new_name = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images'), $image);
        $customer->image = $new_name;

        // if($request->hadFile('image'))
        // {
        //     $image = $request['image'];
        //     $name = time().'.'.$image->getClientOriginalExtension();
        //     $image->save('testing/',$name);
        //     $customer->image = $name;
        // }
        $customer->save();

        return redirect('admin/list');
    }
    public function delete($id)
    {
        $data = Customer::find($id);
        if (!is_null($data)) {
            $data->delete();
        }
        return redirect("admin/list");
    }
    public function force_delete($id)
    {
        $data = Customer::withTrashed()->find($id);
        if (!is_null($data)) {
            $data->forceDelete();
        }
        return redirect("admin/trash");
    }
    public function restore($id)
    {
        $data = Customer::withTrashed()->find($id);
        if (!is_null($data)) {
            $data->restore();
        }
        return redirect("admin/trash");
    }

    public function edit($id)
    {
        $data = Customer::get($id);
        if (is_null($data)) {
            // data not found
            return redirect("list");
        } else {
            // if data Found
            $url = url("/update") . "/" . $id;
            $title = "Update Customer";
            $hide_class = 'display:none';
            $user_data = compact('data', 'url', 'title', 'hide_class');
            return view('form')->with($user_data);
        }
    }
    public function update($id, Request $request)
    {
        $user_data = Customer::find($id);
        $user_data->name = $request['name'];
        $user_data->gender = $request['gender'];
        $user_data->email = $request['email'];
        $user_data->address = $request['address'];
        $user_data->status = $request['status'];

        $image = $request->file('image');
        $new_name = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images'), $image);
        $user_data->image = $new_name;

        $user_data->save();
        return redirect("admin/list");
    }
    public function trash()
    {
        $row = Customer::onlyTrashed()->get();
        $data = compact('row');
        return view('trash')->with($data);
    }

    function signin(Request $request)
    {
       $request->validate(
        [
            'email' => 'email|required',
            'password' => 'required'
        ]
        );

        $credential = $request->only('email', 'password');
        if(Auth::attempt($credential)){
            return redirect('admin/list')->withsuccess('You are Login In Successfuly!');
        }
        return redirect('login')->witherror("Invalide Username Or Password");
    }
    public function list(Request $request)
    {
        $search = $request['search'] ?? "";
        if ($search != "") {
            $customer = Customer::where('name', 'LIKE', "%$search%")->orwhere('email', 'LIKE', "%$search%")->orwhere('gender', 'LIKE', "%$search%")->orwhere('address', 'LIKE', "%$search%")->paginate(15);
        } else {
            $customer = Customer::paginate(15);
        }
        $data = compact('customer', 'search');
        return view('/list')->with($data);
    }

    public function logout()
    {
        Session::flush();

        Auth::logout();
        return redirect('login');
    }
}
