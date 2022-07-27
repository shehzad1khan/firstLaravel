<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Customer;
use Faker\Factory as faker;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $fakedata = faker::create();
        for($i = 1; $i <= 100; $i++){
        $cus = new Customer;
        $cus -> name = $fakedata-> name;
        $cus -> gender = "male";
        $cus -> email = $fakedata-> email;
        $cus -> address = $fakedata-> address;
        $cus -> password = $fakedata-> password;
        $cus -> status = "0";
        $cus -> save();
        }
    }
}
