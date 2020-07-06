<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBahasaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bahasa', function (Blueprint $table) {
            $table->increments('id');
            $table->string('bahasa', 20);
            $table->timestamps();
        });

        // Set FK di kolom is_kelas di tabel siswa.
        Schema::table('cerita', function (Blueprint $table) {
            $table->foreign('id_bahasa')
                  ->references('id')
                  ->on('bahasa')
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
        // Drop FK di kolom id_kelas di tabel siswa
        Schema::table('cerita', function (Blueprint $table) {
            $table->dropForeign('cerita_id_bahasa_foreign');
        });


        Schema::dropIfExists('bahasa');
    }
}
