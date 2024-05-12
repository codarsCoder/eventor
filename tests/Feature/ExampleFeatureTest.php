<?php
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;

class ExampleFeatureTest extends TestCase
{
    use WithFaker; // WithFaker kullanarak rastgele veri oluşturma özelliğini ekledik

    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_user_can_register()
    {
        // Rastgele bir kullanıcı oluştur
        $userData = [
            'name' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'password' => $this->faker->password,
        ];

        // Kullanıcı kayıt isteği gönderir
        $response = $this->post('/register', $userData);

        // Kayıt işlemi başarılı olmalıdır
        $response->assertStatus(302); // Redirect döndürülmelidir
        $this->assertAuthenticated(); // Kullanıcı giriş yapmış olmalıdır

        // Kaydedilen kullanıcıyı veritabanında kontrol et
        $this->assertDatabaseHas('users', [
            'name' => $userData['name'],
            'email' => $userData['email'],
        ]);
    }
}
