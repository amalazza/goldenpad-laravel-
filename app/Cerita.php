<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cerita extends Model
{
    protected $table = 'cerita';

    protected $fillable = [
        'isbn',
        'penulis',
        'judul',
        'deskripsi',
        'cerita',
        'id_bahasa',
        'id_target',
        'foto'
    ];

    // protected $dates = ['tanggal_lahir'];

    // Relasi Cerita - genre
    public function genre() {
        return $this->belongsToMany('App\Genre', 'genre_cerita', 'id_cerita', 'id_genre')->withTimeStamps();
    }


    // Relasi Cerita - Bahasa
    public function bahasa() {
        return $this->belongsTo('App\Bahasa', 'id_bahasa');
    }

    // Relasi Cerita - Target
    public function target() {
        return $this->belongsTo('App\Target', 'id_target');
    }


    // Relasi Siswa - Telepon
    // public function telepon() {
    //     return $this->hasOne('App\Telepon', 'id_siswa');
    // }


    // Accessor
    public function getJudulAttribute($judul) {
        return ucwords($judul);
    }


    // Mutator
    public function setJudulAttribute($judul) {
        $this->attributes['judul'] = strtolower($judul);
    }


    // Accessor
    public function getGenreCeritaAttribute() {
        return $this->genre->pluck('id')->toArray();
    }

    // Scope Bahasa
    public function scopeBahasa($query, $id_bahasa) {
        return $query->where('id_bahasa', $id_bahasa);
    }

    // Scope Target
    public function scopeTarget($query, $id_target) {
        return $query->where('id_target', $id_target);
    }

    // Scope Jenis Kelamin
    // public function scopeJenisKelamin($query, $jenis_kelamin) {
    //     return $query->where('jenis_kelamin', $jenis_kelamin);
    // }

}
