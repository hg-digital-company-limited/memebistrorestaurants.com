<?php

namespace App\Livewire;

use App\Models\Customer;
use Livewire\Component;

class MyAccount extends Component
{
    public $user;
    public $customer;
    public function mount()
    {
        $this->user = auth()->user();
        if(!$this->user){
            return redirect()->route('login');
        }
        $this->customer = Customer::where('user_id', $this->user->id)->first();
    }
    public function render()
    {
        return view('livewire.my-account');
    }
}
