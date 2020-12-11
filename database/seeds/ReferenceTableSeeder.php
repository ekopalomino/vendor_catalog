<?php

use Illuminate\Database\Seeder;
use iteos\Models\Reference;
use bfinlay\SpreadsheetSeeder\SpreadsheetSeeder;

class ReferenceTableSeeder extends SpreadsheetSeeder
{
    public function __construct()
    {
        $this->file = '/dump_db/references.xls'; // specify relative to Laravel project base path
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
