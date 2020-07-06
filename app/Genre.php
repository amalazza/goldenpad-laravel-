<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    protected $table = 'genre';

    protected $fillable = ['nama_genre'];

    public function cerita() {
        return $this->belongsToMany('App\Cerita', 'genre_cerita', 'id_genre', 'id_cerita');
    }
}
