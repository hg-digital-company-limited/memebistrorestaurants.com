<?php

namespace App\Livewire;

use Livewire\Component;

class Home extends Component
{
    public function logout()
    {

        auth()->logout();
        return redirect('/login');
    }
    public function render()
    {
        return view('livewire.home');
    }
}
