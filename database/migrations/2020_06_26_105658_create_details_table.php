<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('details', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->bigInteger('registered_user');
            $table->mediumText('description');
            $table->integer('packet_id');
            $table->timestamps();
        });

        Schema::table('details', function (Blueprint $table) {
            $table->foreign('packet_id')->references('id')->on('packets')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('details');
    }
}
