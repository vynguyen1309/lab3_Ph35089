<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class BooksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create();
        for ($i = 0; $i < 100; $i++) {
            DB::table('books')->insert(
                [
                    'title' => $faker->text(20),
                    'thumbnail' => 'https://reviewsach.net/wp-content/uploads/2018/12/review-sach-dac-nhan-tam.jpg',
                    'author' =>$faker->text(20),
                    'publisher' => $faker->text(20),
                    'publication' => now(),
                    'price' => rand(10000,1000000),
                    'quantity' => rand(20,100),
                    'category_id' => rand(1,5),


                ]
            );
        }
    }
}
