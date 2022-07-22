<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;

class RegistrationController extends Controller
{
    public function form()
    {
        return view('form');
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
        $customer->save();

        return redirect('/list');
    }
    public function list()
    {
        $row = Customer::all();
        $data = compact('row');
        return view('list')->with($data);
    }
    public function delete($id)
    {
        $data = Customer::find($id);
        if(!is_null($data)){
            $data->delete();
        }
        return redirect("list");
    }
}
