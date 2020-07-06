<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTargetTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('target', function (Blueprint $table) {
            $table->increments('id');
            $table->string('target_pembaca', 50);
            $table->timestamps();
        });

        // Set FK di kolom is_kelas di tabel siswa.
        Schema::table('cerita', function (Blueprint $table) {
            $table->foreign('id_taget')
                  ->references('id')
                  ->on('target')
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
            $table->dropForeign('cerita_id_target_foreign');
        });

        Schema::dropIfExists('target');
    }
}
