<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSlugAndSoldQuantityToDishesTable extends Migration
{
    public function up()
    {
        Schema::table('dishes', function (Blueprint $table) {
            $table->string('slug')->unique(); // Thêm trường slug
            $table->integer('sold_quantity')->default(0); // Thêm trường sold_quantity
        });
    }

    public function down()
    {
        Schema::table('dishes', function (Blueprint $table) {
            $table->dropColumn('slug'); // Xóa trường slug nếu cần
            $table->dropColumn('sold_quantity'); // Xóa trường sold_quantity nếu cần
        });
    }
}
