<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            [
                'id'=>1,
                'name'=>'Admin',
                'email'=>'admin@gmail.com',
                'password'=>Hash::make('admin'),
                'role'=>'Admin'
            ],
            [
                'id'=>2,
                'name'=>'Customer1',
                'email'=>'customer1@gmail.com',
                'password'=>Hash::make('customer1'),
                'role'=>'Customer'
            ],
            [
                'id'=>3,
                'name'=>'Customer2',
                'email'=>'customer2@gmail.com',
                'password'=>Hash::make('customer2'),
                'role'=>'Customer'
            ],
            [
                'id'=>4,
                'name'=>'Customer3',
                'email'=>'customer3@gmail.com',
                'password'=>Hash::make('customer3'),
                'role'=>'Customer'
            ],
        ]);
    }
}