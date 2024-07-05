<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class appointment extends Model
{
    use HasFactory;
    protected $fillable = ['nama_customer', 'email', 'alamat','no_telp','tanggal_appointment', 'waktu_appointment','bundeling','tempat_shoot','total_pembayaran','jenis_pembayaran','status_pembayaran'];
}
