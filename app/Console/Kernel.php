<?php

namespace App\Console;

use App\Models\Event;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     */
    protected function schedule(Schedule $schedule)
    { 
        $schedule->call(function () {
            Log::info( "message");
            // 1 saat kalan etkinlikleri bul
            $events = Event::where('expire_at', '<=', now()->addHour())
                                ->where('expire_at', '>', now())
                                ->get();

            foreach ($events as $event) {
                // E-posta gönderme işlemi
                $user = $event->user; // Varsayalım ki her event bir kullanıcıya ait
                $subject = 'Event Reminder: ' . $event->name;
                $message = "Merhaba {$user->name},\n\n";
                $message .= "Etkinlik zamanı yaklaşıyor. {$event->name} etkinliği {$event->expire_at} tarihinde sona erecek.";

                // E-postayı gönder
                Mail::raw($message, function($mail) use ($user, $subject) {
                    $mail->to($user->email)->subject($subject);
                });
            }
        })->everyMinute();
    }
    /**
     * Register the commands for the application.
     */
    protected function commands(): void
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
