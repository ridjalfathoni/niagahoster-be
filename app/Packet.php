<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Packet extends Model
{

    protected $table = "packets";

    public function details()
    {
    	return $this->hasOne('App\Detail');
    }
}
