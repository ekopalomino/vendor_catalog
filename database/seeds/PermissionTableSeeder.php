<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            'Can Access Settings',
            'Can Access Users',
            'Can Access Sales',
            'Can Access Purchasing',
            'Can Access Products',
            'Can Access Inventories',
            'Can Access Manufactures',
            'Can Access Finances',
            'Can Create Data',
            'Can Edit Data',
            'Can Delete Data',
            'Can Change Status',
            'Can View Data',
            'Can Create Adjustment',
        ];

        foreach($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }
    }
}
