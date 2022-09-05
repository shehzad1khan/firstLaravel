<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Database\Eloquent\SoftDeletes;

class RegistrationController extends Controller
{
    public function form()
    {
        $url = url('admin/insert');
        $title = "Register Customer";
        $data = compact('url', 'title');
        return view('form')->with($data);
    }

    public function register(Request $request)
    {
        $request->validate( 
            [
                'name' => 'required',
                'gender' => 'required',
                'email' => 'required|email',
                'address' => 'required',
                'password' => 'required|',
                'status' => 'required'
            ]
        );
      //  Insert Query in Laravel
        $customer = new Customer();
        $customer->name = $request['name'];
        $customer->gender = $request['gender'];
        $customer->email = $request['email'];
        $customer->address = $request['address'];
        $customer->password = md5($request['password']);
        $customer->status = $request['status'];
        $customer->save();

        return redirect('admin/list');
    }
    public function list(Request $request)
    {
        $search = $request['search'] ?? "";
        if($search != ""){
            $customer = Customer::where('name', 'LIKE', "%$search%")->orwhere('email', 'LIKE', "%$search%")->orwhere('gender', 'LIKE', "%$search%")->orwhere('address', 'LIKE', "%$search%")->paginate(15);
        }else{
            $customer = Customer::paginate(15);
        }
        $data = compact('customer', 'search');
        return view('admin/list')->with($data);
    }
    public function delete($id)
    {
        $data = Customer::find($id);
        if(!is_null($data)){
            $data->delete();
        }
        return redirect("admin/list");
    }
    public function force_delete($id)
    {
        $data = Customer::withTrashed()->find($id);
        if(!is_null($data)){
            $data->forceDelete();
        }
        return redirect("admin/trash");
    }
    public function restore($id)
    {
        $data = Customer::withTrashed()->find($id);
        if(!is_null($data)){
            $data->restore();
        }
        return redirect("admin/trash");
    }

    public function edit($id)
    {
        $data = Customer::find($id);
        if(is_null($data))
        {
            // data not found
            return redirect("list");
        }else{
            // if data Found
            $url = url("admin/update") ."/". $id;
            $title = "Update Customer";
            $user_data = compact('data', 'url', 'title');
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
        $user_data->save();
        return redirect("admin/list");
    }
    public function trash()
    {
        $row = Customer::onlyTrashed()->get();
        $data = compact('row');
        return view('trash')->with($data);
    }

    public function login(Request $request)
    {
        $data = Customer::get();
        $email = $request['email'];
        $password = $request['password'];

        if($data == $email && $data->password == $password)
        {
            return redirect('admin/list');
        }else{
            return redirect('login-form');
        }
    }
}
