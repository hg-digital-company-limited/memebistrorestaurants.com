<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFoodCategoryIdToDishesTable extends Migration
{
    public function up()
    {
        Schema::table('dishes', function (Blueprint $table) {
            $table->foreignId('food_category_id')->constrained('food_categories')->onDelete('cascade')->after('price');
        });
    }

    public function down()
    {
        Schema::table('dishes', function (Blueprint $table) {
            $table->dropForeign(['food_category_id']);
            $table->dropColumn('food_category_id');
        });
    }
}
