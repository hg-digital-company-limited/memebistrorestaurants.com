<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPaymentStatusToOrdersTable  extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->string('payment_status')->default('pending'); // Trạng thái thanh toán
            $table->string('address')->nullable(); // Địa chỉ
            $table->string('name')->nullable(); // Tên
            $table->string('phone')->nullable(); // Số điện thoại
            $table->string('email')->nullable(); // Email
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn(['payment_status', 'address', 'name', 'phone', 'email']);
        });
    }
}