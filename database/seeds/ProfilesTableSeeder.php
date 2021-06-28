<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProfilesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('profiles')->insert([
          
            [
                'id'=>2,
                'user_id'=>2,
                'phonenumber'=>'08215551234',
                'country'=>'Indonesia',
                'city'=>'Medan',
                'address'=>'Danau Toba',
                'zipcode'=>27321
            ],
            
        
        ]);
    }
}