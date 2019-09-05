<?php

use Illuminate\Database\Seeder;
use Erp\Models\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'eko',
            'email' => 'eko@local.com',
            'password' => 'password',
        ]);
    }
}
