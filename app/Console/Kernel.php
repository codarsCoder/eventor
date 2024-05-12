<?php

namespace App\Console;

use App\Models\Event;
use App\Models\User;
use App\Models\Registration;
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

            // 1 saat kalan etkinlikleri bul
            $events = Event::where('expire_at', '<=', now()->addHour())
                ->where('expire_at', '>', now())
                ->get();

            foreach ($events as $event) {

                $registrations = Registration::where('event_id', $event->id)->get();

                foreach ($registrations as $registration) {

                    $user = User::find($registration->user_id);
                    $subject = 'Event Reminder: ' . $user->name;
                    $message = "Merhaba {$user->name},\n\n";
                    $message .= "Etkinlik zamanı yaklaşıyor. {$event->name} etkinliği {$event->expire_at} tarihinde başlayacak.";

                    // E-postayı gönder
                    Mail::raw($message, function ($mail) use ($user, $subject) {
                        $mail->to($user->email)->subject($subject);
                    });
                }
            }
        })->everyMinute();
    }
    /**
     * Register the commands for the application.
     */
    protected function commands(): void
    {
        $this->load(__DIR__ . '/Commands');

        require base_path('routes/console.php');
    }
}
