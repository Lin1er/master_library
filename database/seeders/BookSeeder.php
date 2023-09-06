<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $dumpFile = database_path('seeds/dumps/data.sql');

        $sql = file_get_contents($dumpFile);

        DB::unprepared($sql);

        $this->command->info('Dump data has been inserted successfully.');
    }
}
