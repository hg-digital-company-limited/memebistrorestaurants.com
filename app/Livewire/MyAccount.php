<?php

namespace App\Livewire;

use Livewire\Component;

class MyAccount extends Component
{
    public $user;
    public function mount()
    {
        $this->user = auth()->user();
        if(!$this->user){
            return redirect()->route('login');
        }
    }
    public function render()
    {
        return view('livewire.my-account');
    }
}
