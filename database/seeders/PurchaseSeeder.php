<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PurchaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = faker::create('id_ID');
        for($i=0;$i<=20;$i++){
            \DB::table('purchases')->insert([
                'No_Transaksi' => $faker->md5(),
                'Tanggal' => $faker->dateTime($max = 'now', $timezone = null),
                'Kode_Supplier' => $faker->randomNumber($nbDigits = NULL, $strict = false),
                'Nama' => $faker->word,
                'Total' => $faker->randomFloat($nbMaxDecimals = null, $min = 1000, $max = null),
                'created_at' => $faker->dateTime($max = 'now', $timezone = null),
                'updated_at' => $faker->dateTime($max = 'now', $timezone = null),
            ]);
        }
    }
}
