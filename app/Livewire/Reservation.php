<?php

namespace App\Livewire;

use App\Models\Reservation as ReservationModel;
use App\Models\Restaurant;
use Barryvdh\DomPDF\Facade\Pdf;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class Reservation extends Component
{
    public $name;
    public $phone;
    public $email;
    public $reservation_day;
    public $number_of_people;
    public $reservation_time;
    public $restaurant_id;
    public $notes;
    public $otp; // New property for OTP
    public $generatedOtp; // Store generated OTP
    public $otpSent = false; // Track if OTP has been sent

    public function mount()
    {
        if (Auth::check()) {
            $this->name = Auth::user()->name;
            $this->phone = Auth::user()->phone;
        }
        $this->reservation_time = date('H:i');
        $this->reservation_day = date('Y-m-d');
        $this->restaurant_id = Restaurant::first()->id;
        $this->number_of_people = 1;
    }

    public function submit()
    {
        if ($this->otpSent) {
            $this->verifyOtp();
        } else {
            $this->sendOtp();
        }
    }

    public function sendOtp()
    {
        $this->generatedOtp = rand(100000, 999999); // Generate a 6-digit OTP
        Mail::to($this->email)->send(new \App\Mail\OtpMail($this->generatedOtp)); // Replace with actual email logic

        $this->otpSent = true;
        session()->flash('message', 'OTP has been sent to your email.');
    }

    public function verifyOtp()
    {
        if ($this->otp == $this->generatedOtp) {
            $this->createReservation(); // Proceed to create the reservation
        } else {
            session()->flash('error', 'Invalid OTP. Please try again.');
        }
    }

    public function createReservation()
    {
        $reservation_code = strtoupper(uniqid('RESERVATION_'));

        $reservation = ReservationModel::create([
            'user_id' => Auth::check() ? Auth::id() : null,
            'restaurant_id' => $this->restaurant_id,
            'number_of_people' => $this->number_of_people,
            'reservation_time' => $this->reservation_time,
            'reservation_day' => $this->reservation_day,
            'reservation_code' => $reservation_code,
            'name' => $this->name,
            'phone' => $this->phone,
            'notes' => $this->notes,
            'status' => 'pending',
        ]);

        session()->flash('message', 'Reservation successfully created.');
        $this->downloadPDF($reservation->id);
        $this->reset();
    }

    public function downloadPDF($reservationId)
    {
        $reservation = ReservationModel::findOrFail($reservationId);
        $pdf = Pdf::loadView('pdf.reservation', ['reservation' => $reservation]);
        $pdf->save('reservation_' . $reservation->reservation_code . '.pdf');
        return redirect('/reservation_' . $reservation->reservation_code . '.pdf');
    }

    public function render()
    {
        $restaurants = Restaurant::all();
        return view('livewire.reservation', ['restaurants' => $restaurants]);
    }
}