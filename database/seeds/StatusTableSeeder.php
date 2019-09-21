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
            'Requested',
        ];

        foreach($statuses as $status) {
            Status::create(['name' => $status]);
        }
    }
}
