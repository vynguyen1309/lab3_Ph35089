<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('categories')->insert(
            [
                ['name'=>'Sách kinh tế'],
                ['name'=>'Sách thiếu nhi'],
                ['name'=>'Sách công nghệ'],
                ['name'=>'Sách gia đình'],
                ['name'=>'Sách chính trị']

            ]
        );
    }
}
