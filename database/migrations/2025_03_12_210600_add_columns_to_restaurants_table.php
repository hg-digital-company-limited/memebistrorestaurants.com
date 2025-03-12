<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToRestaurantsTable extends Migration
{
    public function up()
    {
        Schema::table('restaurants', function (Blueprint $table) {
            $table->string('map')->nullable(); // Map column
            $table->string('phone')->nullable(); // Phone column
            $table->string('email')->nullable(); // Email column
        });
    }

    public function down()
    {
        Schema::table('restaurants', function (Blueprint $table) {
            $table->dropColumn(['map', 'phone', 'email']); // Drop the columns
        });
    }
}