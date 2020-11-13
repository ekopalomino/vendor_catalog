<?php

use Illuminate\Database\Seeder;
use iteos\Models\Status;

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
            'Submit',
            'Full Payment',
            'Down Payment',
            'Complete Process',
            'Receipt Created',
            'Active',
            'Received',
            'Invoice Created',
            'Approve',
            
        ];

        foreach($statuses as $status) {
            Status::create(['name' => $status]);
        }
    }
}
