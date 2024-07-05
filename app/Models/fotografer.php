<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fotografer extends Model
{
    use HasFactory;
    protected $fillable = ['nama_fotografer','spesialis_fotografer','notelp_fotografer'];
}
