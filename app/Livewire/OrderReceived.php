<?php

namespace App\Livewire;

use App\Models\Order;
use Livewire\Component;

class OrderReceived extends Component
{
    public $order;

    public function mount()
    {
        $this->order = Order::where('order_code', request()->vnp_TxnRef)->first();

        // Check if the order was found
        if (!$this->order) {
            dd('không tìm thấy đơn hàng');
            return redirect('/');
        }

        // Format the amount for display
        $formattedAmount = $this->order->total_amount;

        // Compare the amounts without formatting
        if ($this->order->total_amount != request()->vnp_Amount) {
            $this->order->payment_status = 'failed';
            $this->order->save();
            session()->flash('message', 'Thanh toán thất bại!');
            return redirect('/');
        }

        // Handle payment response
        if (request()->vnp_ResponseCode != '00' && $this->order->payment_status == 'unpaid') {
            $this->order->payment_status = 'failed';
            $this->order->save();
            session()->flash('message', 'Thanh toán thất bại!');
        } else if (request()->vnp_ResponseCode == '00' && $this->order->payment_status == 'unpaid') {
            $this->order->payment_status = 'paid';
            $this->order->save();
            session()->flash('message', 'Thanh toán thành công! mã đơn hàng: ' . $this->order->order_code);
        }else{
            session()->flash('message', 'Thanh toán thành công! mã đơn hàng: ' . $this->order->order_code);
        }
    }

    public function render()
    {
        return view('livewire.order-received');
    }
}