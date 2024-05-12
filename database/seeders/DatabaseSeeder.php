<?php
use App\Models\Event;

use App\Models\User;
use Illuminate\Database\Seeder;
use App\Models\Registration;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        // Kullanıcılar oluştur
        User::factory()->create([
            'name' => 'admin',
            'email' => 'admin@admin.com',
        ]);

        User::factory(5)->create();

        // Event'leri  oluştur
        User::all()->each(function ($user) {
            Event::factory(3)->create(['user_id' => $user->id]);
        });

        // Kayıtları oluştur
        Event::all()->each(function ($event) {
            Registration::factory(3)->create(['event_id' => $event->id]); //register  factory bu id yi kullanıp gerisini kendi ekleyecek
        });
    }
}
