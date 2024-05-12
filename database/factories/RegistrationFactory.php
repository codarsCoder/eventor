<?php
namespace Database\Factories;
use App\Models\Event;
use App\Models\Registration;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class RegistrationFactory extends Factory
{
    protected $model = Registration::class;

    public function definition()
    {
        // Mevcut kullanıcı ve etkinliklerin ID'lerini al
        $userIds = User::pluck('id')->toArray();
        $eventIds = Event::pluck('id')->toArray();

        return [
            'user_id' => $this->faker->randomElement($userIds),
            'event_id' => null, //  Event::factory()    event factory bir event oluşturup id sini buraya döner ,biz buraya seedreden id döneceğiz onu kullanacak yeni event üretmeyecek mevcudu kullanacak
        ];
    }
}
