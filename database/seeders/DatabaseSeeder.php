<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(UserTableSeeder::class);
        $this->call(SettingsTableSeeder::class);

        //factory('App\Models\Category', 5)->create();
        //factory('App\Models\Post', 50)->create();
    }
}
