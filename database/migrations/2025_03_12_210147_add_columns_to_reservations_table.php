<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToReservationsTable extends Migration
{
    public function up()
    {
        Schema::table('reservations', function (Blueprint $table) {
            $table->string('name')->nullable(false); // Name column
            $table->string('phone')->nullable(false); // Phone column
            $table->date('reservation_day')->nullable(false); // Reservation day column
        });
    }

    public function down()
    {
        Schema::table('reservations', function (Blueprint $table) {
            $table->dropColumn(['name', 'phone', 'reservation_day']); // Drop the columns
        });
    }
}