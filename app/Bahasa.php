<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bahasa extends Model
{
    protected $table = 'bahasa';

    protected $fillable = ['bahasa'];

    public function cerita() {
        return $this->hasMany('App\Cerita', 'id_bahasa');
    }
}
