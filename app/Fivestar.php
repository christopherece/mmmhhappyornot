<?php

namespace App;
use App\Survey;

use Illuminate\Database\Eloquent\Model;

class Fivestar extends Model
{
    //
    protected $fillable = [
        'fivestar'
    ];

    public function surveys(){

        return $this->hasMany('App\Survey','fivestar');
    }
}
