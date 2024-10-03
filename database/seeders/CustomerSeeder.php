<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CustomerSeeder extends Seeder
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
            \DB::table('customers')->insert([
                'Kode_Pelanggan' => $faker->randomNumber($nbDigits = NULL, $strict = false),
                'Nama' => $faker->word,
                'Alamat' => $faker->city,
                'Telepon' => $faker->phoneNumber,
                'Jumlah_Transaksi' => $faker->randomDigit,
                'Total' => $faker->randomFloat($nbMaxDecimals = null, $min = 1000, $max = null),
                'created_at' => $faker->dateTime($max = 'now', $timezone = null),
                'updated_at' => $faker->dateTime($max = 'now', $timezone = null),
            ]);
        }
    }
}
