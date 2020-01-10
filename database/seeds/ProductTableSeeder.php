<?php

use Illuminate\Database\Seeder;
use iteos\Models\Product;
use bfinlay\SpreadsheetSeeder\SpreadsheetSeeder;

class ProductTableSeeder extends SpreadsheetSeeder
{
    public function __construct()
    {
        $this->file = '/dump_db/product.xls'; // specify relative to Laravel project base path
    }
    /**
     * Run the database seeds.
     *
     * @return void
     */
    
    
    public function run()
    {
        DB::disableQueryLog();
	    parent::run();
    }
}
