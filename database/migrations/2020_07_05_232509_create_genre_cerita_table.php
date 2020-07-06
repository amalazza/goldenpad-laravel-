<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGenreCeritaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('genre_cerita', function (Blueprint $table) {
            // Create tabel genre_cerita
            $table->integer('id_cerita')->unsigned()->index();
            $table->integer('id_genre')->unsigned()->index();
            $table->timestamps();

            // Set PK
            $table->primary(['id_cerita', 'id_genre']);

            // Set FK genre_cerita --- cerita
            $table->foreign('id_cerita')
                  ->references('id')
                  ->on('cerita')
                  ->onDelete('cascade')
                  ->onUpdate('cascade');

            // Set FK genre_cerita --- genre
            $table->foreign('id_genre')
                  ->references('id')
                  ->on('genre')
                  ->onDelete('cascade')
                  ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('genre_cerita');
    }
}
