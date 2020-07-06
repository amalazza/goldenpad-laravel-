<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Target extends Model
{
    protected $table = 'target';

    protected $fillable = ['target_pembaca'];

    public function cerita() {
        return $this->hasMany('App\Cerita', 'id_target');
    }
}
