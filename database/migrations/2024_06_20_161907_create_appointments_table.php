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
        Schema::create('appointments', function (Blueprint $table) {
            $table->id();
            $table->string('nama_customer');
            $table->string('email');
            $table->string('alamat');
            $table->string('no_telp');
            $table->date('tanggal_appointment');
            $table->string('waktu_appointment');
            $table->enum('bundeling',['Wedding','Graduation','Event']);
            $table->string('tempat_shoot');
            $table->string('total_pembayaran');
            $table->enum('jenis_pembayaran',['Cash','Transfer']);
            $table->enum('status_pembayaran',['Lunas','DP']);
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
        Schema::dropIfExists('appointments');
    }
};
