<?php

use Illuminate\Database\Seeder;
use iteos\Models\ReturReason;

class ReturReasonTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $reasons = [
            'Barang Rusak',
            'Tidak Sesuai Spesifikasi',
            'Warna Salah',
            'Barang Tidak Lengkap',
            'Kemasan Barang Rusak',
            'Ingin Tukar Barang',
            'Barang Salah Kirim',
            'Barang Kelebihan Kirim',
        ];

        foreach($reasons as $reason) {
            ReturReason::create(['name' => $reason]);
        }
    }
}
