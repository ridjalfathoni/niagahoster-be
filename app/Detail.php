<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{
    protected $table = 'details';

    public function packets() {
        return $this->belongsTo('App\Packet');
    }
}
