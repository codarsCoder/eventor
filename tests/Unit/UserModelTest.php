<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\DatabaseTransactions;
// use PHPUnit\Framework\TestCase;
use Tests\TestCase;

use App\Models\User;
use App\Models\Event;
use App\Models\Registration;

class UserModelTest extends TestCase
{
    use DatabaseTransactions;

    /**
     * A basic unit test example.
     */
    public function test_example(): void
    {
        // Kullanıcı oluştur
        $user = User::factory()->create();

        // Etkinlik oluştur
        $event = Event::factory()->create(['user_id' => $user->id]);

        // Kullanıcıyı etkinliğe kaydet
        $registration = Registration::factory()->create([
            'user_id' => $user->id,
            'event_id' => $event->id,
        ]);

        // Kaydın doğru bir şekilde oluşturulup oluşturulmadığını kontrol et
        $this->assertNotNull($registration);
        $this->assertEquals($user->id, $registration->user_id);
        $this->assertEquals($event->id, $registration->event_id);
    }
}
