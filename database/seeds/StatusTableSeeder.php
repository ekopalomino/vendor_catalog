<?php

use Illuminate\Database\Seeder;
use Erp\Models\Status;

class StatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $statuses = [
            'Active',
            'Suspended',
            'Submit',
            'Unpaid',
            'Delivered',
            'On Process',
            'Empty Stock',
            'Normal Stock',
            'Low on Stock',
        ];

        foreach($statuses as $status) {
            Status::create(['name' => $status]);
        }
    }
}
