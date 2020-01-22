<?php

namespace iteos\Console\Commands;

use Illuminate\Console\Command;
use iteos\Models\Inventory;
use iteos\Models\InventoryMovement;
use iteos\Models\Reference;
use Carbon\Carbon;

class SumMonthlyStock extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'stock:month';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Sum Total Stock On Every Month';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $stocks = Inventory::all();
        foreach($stocks as $stock) {
            $lastRef = Reference::where('type','2')->count();
            $refs = 'ADJ/FTI/'.str_pad($lastRef + 1, 6, "0", STR_PAD_LEFT).'/'.(\GenerateRoman::integerToRoman(Carbon::now()->month)).'/'.(Carbon::now()->year).'';
            $months = Carbon::now()->month;
            $sum = Inventory::where('product_id',$stock->product_id)->update([
                'opening_amount' => $stock->closing_amount,
                'closing_amount' => $stock->closing_amount,
            ]);
            $getInventory = Inventory::where('product_id',$stock->product_id)->first();
            $movement = InventoryMovement::create([
                'inventory_id' => $getInventory->id,
                'reference_id' => $refs,
                'type' => '9',
                'product_name' => $stock->product_name,
                'warehouse_name' => $stock->warehouse_name,
                'incoming' => $getInventory->opening_amount,
                'outgoing' => '0',
                'remaining' => $getInventory->opening_amount,
                'notes' => 'Stok Awal Bulan'.($months).'',
            ]);
        }
    }
}
