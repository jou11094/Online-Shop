<?php


use App\Product;
use Illuminate\Database\Seeder;

class productTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        for ($i=1; $i < 30 ; $i++) { 
            Product::create([
            'name'=> 'Laptop '.$i,
            'slug'=> 'laptop-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(1);
        }


      	$product = Product::find(3);
      	$product->categories()->attach(2);
        
        
        for ($i=1; $i < 9 ; $i++) { 
            Product::create([
            'name'=> 'Desktop '.$i,
            'slug'=> 'desktop-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(2);
        }


        for ($i=1; $i < 9 ; $i++) { 
            Product::create([
            'name'=> 'Tablet '.$i,
            'slug'=> 'tablet-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(3);
        }

        for ($i=1; $i < 9 ; $i++) { 
            Product::create([
            'name'=> 'Phone '.$i,
            'slug'=> 'phone-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(4);
        }

        for ($i=1; $i < 9 ; $i++) { 
            Product::create([
            'name'=> 'TV '.$i,
            'slug'=> 'tV-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(5);
        }

        for ($i=1; $i < 9 ; $i++) { 
            Product::create([
            'name'=> 'Camera '.$i,
            'slug'=> 'camera-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(6);
        }

        for ($i=1; $i < 9 ; $i++) { 
            Product::create([
            'name'=> 'Appliance '.$i,
            'slug'=> 'appliance-'.$i,
            'details'=> 'Is inch, 1TB SSD, 32GB RAM',
            'price' => '1'.$i.'200',
            'description' => 'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
        ])->categories()->attach(7);
        } 

    }
}
