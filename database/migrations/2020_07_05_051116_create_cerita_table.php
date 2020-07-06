<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCeritaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cerita', function (Blueprint $table) {
            $table->increments('id');
            $table->string('isbn', 4)->unique();
            $table->string('penulis', 50);
            $table->string('judul', 50);
            $table->string('deskripsi', 1000);
            $table->string('cerita', 10000);
            $table->integer('id_bahasa')->unsigned();
            $table->integer('id_target')->unsigned();
            $table->string('foto')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cerita');
    }
}
