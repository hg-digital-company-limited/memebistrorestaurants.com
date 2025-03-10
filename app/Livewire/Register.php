<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Validator;
use App\Models\User;

class Register extends Component
{
    public $email;
    public $phone;
    public $name;
    public $password;

    public function register()
    {
        if (empty($this->name)) {
            session()->flash('error', 'Vui lòng nhập tên.');
            return;
        }
        // Kiểm tra xem email và phone đã tồn tại chưa
        if (User::where('email', $this->email)->exists()) {
            session()->flash('error', 'Email đã tồn tại.');
            return;
        }

        if (User::where('phone', $this->phone)->exists()) {
            session()->flash('error', 'Số điện thoại đã tồn tại.');
            return;
        }
        if (empty($this->email) || empty($this->phone) || empty($this->password)) {
            session()->flash('error', 'Vui lòng nhập đầy đủ thông tin.');
            return;
        }


        // Tạo người dùng mới
        User::create([
            'name' => $this->email,
            'email' => $this->email,
            'phone' => $this->phone,
            'password' => bcrypt($this->password),
        ]);

        // Reset các thuộc tính
        $this->reset(['email', 'phone', 'password']);

        // Hiển thị thông báo thành công
        session()->flash('message', 'Đăng ký thành công!');
    }

    public function render()
    {
        return view('livewire.register');
    }
}
