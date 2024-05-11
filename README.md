## EVENTOR

### Proje Özellikleri

- **Laravel 10.1**
- **Mysql DB**

### Proje Gereksinimleri

- **Php version min. 8.0**
- **Composer version min. 2.2 (Aksi halde projedeki vendor klasörü kullanılabilir)**
- **Projede kullanılan passport auth paketi için php yapılandırmasında sodium paketi aktif edilmiş olmalı**

### Proje Kurulumu

- **Veritabanını oluşturun**
- **.env dosyasına oluşturduğunuz veritabanı bilgilerini ekleyin**
- **.env dosyasına email bilgilerini eleyin**
- **Aşağıdaki yönergeleri proje dizininde console ile sıra ile çalıştırın**
- **composer install**
- **php artisan key:generate**
- **php artisan migrate**
- **php artisan db:seed**
- **Bir saat öncesi zamanı gelen eventlerin katılımcılarına hatırlatma maili gitmesi için hostingte cronjob oluşturun**
- **cronjob için cd /path/to && php artisan schedule:run >> /dev/null 2>&1   her saat çalışacak şekilde ekleyin**

#### Artık projeniz kullanıma hazır , giriş için mail:admin@admin.com, password:12345678
- ****
- ****
- ****









php artisan schedule:run
## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[WebReinvent](https://webreinvent.com/)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Jump24](https://jump24.co.uk)**
- **[Redberry](https://redberry.international/laravel/)**
- **[Active Logic](https://activelogic.com)**
- **[byte5](https://byte5.de)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
