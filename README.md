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

### Proje Kullanımı

#### Eventor projesinde kullanıcılar etkinlik oluşturablir, başka etkinliklere katılabilir yada etkinlikten çıkabilirler.


### Proje Api Kullanımı

#### Eventor un sunduğ api servisleri ile üyelik gerçekleştirip, sisteme giriş yapabilir ve etkinlik oluşturup,güncelleyip silebilirsiniz. Diğer kullanıcıların etkinliklerine katılabilir yada etkinlikten çıkabilirsiniz.

#### Projenin api servislerini Postman'de kullanmak için aşağıdaki json dosyasını postman'a import ederek kullanabilirsiniz.


[Eventor.postman_collection.json](https://github.com/codarsCoder/eventor/files/15284389/Eventor.postman_collection.json)
      
