<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;

class ExampleFeatureTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_user_can_register()
    {
        // Test verisi
        $userData = [
            'name' => 'John Doe',
            'email' => 'john@example.com',
            'password' => 'password',
        ];

        // Kullanıcı kayıt isteği gönderir
        $response = $this->post('/register', $userData);

        // Kayıt işlemi başarılı olmalıdır
        $response->assertStatus(302); // Redirect döndürülmelidir
        $this->assertAuthenticated(); // Kullanıcı giriş yapmış olmalıdır

        // Kaydedilen kullanıcıyı veritabanında kontrol et
        $this->assertDatabaseHas('users', [
            'name' => 'John Doe',
            'email' => 'john@example.com',
        ]);
    }
}
