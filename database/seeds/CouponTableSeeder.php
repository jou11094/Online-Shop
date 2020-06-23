<?php


use App\Coupon;
use Illuminate\Database\Seeder;

class CouponTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Coupon::create([
        	'code' => 'ABC123',
        	'type' => 'value',
        	'value' => 3000
        ]);
		Coupon::create([
			'code' => 'ABD123',
			'type' => 'percent_off',
			'percent_off' => 50
		]);
    }
}
