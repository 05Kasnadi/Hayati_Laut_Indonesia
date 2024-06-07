<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hayati extends Model
{
    use HasFactory;
    protected $table ="hayati";
    protected $fillable =['nama','jenis','lokalitas','deskripsi'];
}
