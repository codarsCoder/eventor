<?php
namespace Database\Factories;

use App\Models\Event;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;

class EventFactory extends Factory
{
    protected $model = Event::class;

    public function definition()
    {
        $baseDate = Carbon::now()->addDays(rand(1, 5)); // Mevcut tarihe 1 ila 5 gün ekleniyor
        $date = $baseDate->toDateString(); // Tarih olarak alınıyor
        $time = $this->faker->randomElement(['16:00', '17:00', '18:00', '19:00', '20:00', '21:00', '22:00']); // Rastgele bir saat seçiliyor

        // Tarih ve saat birleştirilerek Carbon nesnesi oluşturuluyor
        $expireDateTime = Carbon::createFromFormat('Y-m-d H:i', $date . ' ' . $time);

        return [
            'user_id' =>null, //seederden gelecek, oradan gelemseydi User::factory() kullanırdık,
            'name' => $this->faker->sentence(),
            'description' => $this->faker->paragraph(),
            'date' => $date,
            'time' => $time,
            'expire_at' => $expireDateTime,
        ];
    }
}
