<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Models\Registration;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RegistrationController extends Controller
{
    public function join_event($id)
    {


        // Geri dönüş için sayfaya data hazırla
        $all_events = Event::all();

        // Kullanıcının satın aldığı etkinlikleri al
        $joined_events = Registration::where('user_id', Auth::user()->id)->pluck('event_id')->toArray();

        // Her etkinlik için kullanıcının kayıt durumunu kontrol et
        foreach ($all_events as $event) {
            // Kullanıcının satın aldığı etkinlikler arasında bu etkinlik var mı kontrol et
            if (in_array($event->id, $joined_events)) {
                // Kullanıcı bu etkinliğe kayıtlı, join bilgisini true olarak ayarla
                $event->joined = true;
            } else {
                // Kullanıcı bu etkinliğe kayıtlı değil, join bilgisini false olarak ayarla
                $event->joined = false;
            }
        }

        //Etkinlik kayıt
        $event = Event::find($id);
        // Belirli bir etkinlik için kullanıcının kaydını kontrol ediyoruz
        $register = Registration::where('event_id', $id)
                                 ->where('user_id', Auth::user()->id)
                                 ->first();

        // Eğer kullanıcı daha önce bu etkinliğe kayıt olmadıysa
        if (!$register && $event) {
            // Yeni bir kayıt oluştur
            $newRegistration = new Registration();
            $newRegistration->event_id = $id;
            $newRegistration->user_id = Auth::user()->id;
            $newRegistration->save();


            return redirect()->back()->with('success', 'You have successfully joined for this event.');
        } else {
            return redirect()->back()->with('error', 'You have already joined for this event.');
        }
    }

    // unjoin_event
    public function unjoin_event($id)
    {
        $register = Registration::where('event_id', $id)
                                 ->where('user_id', Auth::user()->id)->first();

        if ($register) {
           if($register->delete()){
               return redirect()->back()->with('success', 'You have successfully unjoined for this event.');
            } else {
                return redirect()->back()->with('error', 'You have already unjoined for this event.');
            }
        } else{
            return redirect()->back()->with('error', 'You have already unjoined for this event.');
        }

    }

}
