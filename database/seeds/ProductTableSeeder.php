<?php

use Illuminate\Database\Seeder;
use bfinlay\SpreadsheetSeeder\SpreadsheetSeeder;
use iteos\Models\Product;

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
