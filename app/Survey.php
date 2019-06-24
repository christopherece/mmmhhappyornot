<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Survey;
class Survey extends Model
{
    //
    protected $fillable = [
        'fivestar',
        'fourstar',
        'threestar',
        'twostar',
        'onestar'
    ];

    public function fivestarresult(){
        return $this->belongsTo('App\Fivestar', 'fivestar');
    }

}
