<?php

use Illuminate\Database\Seeder;
use iteos\Models\InventoryMovement;
use bfinlay\SpreadsheetSeeder\SpreadsheetSeeder;

class InventoryMovementSeeder extends Seeder
{
    public function __construct()
    {
        $this->file = '/dump_db/inventory_movements.xls'; // specify relative to Laravel project base path
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
