<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fotografers', function (Blueprint $table) {
            $table->id();
            $table->string('nama_fotografer');
            $table->enum('spesialis_fotografer',['fotografer','videografer']);
            $table->string('notelp_fotografer');
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
        Schema::dropIfExists('fotografers');
    }
};
