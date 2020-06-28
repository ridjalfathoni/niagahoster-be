<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Packet;
use App\Detail;

class PacketController extends Controller
{
    //
    public function index()
    {
        //$result = Detail::get();
        $fetch = Packet::with('details')->get();

        $result = array(
            'success' => true,
            'message' => 'Data Fetched.',
            'data' => $fetch
        );

        return $result;
    }
}
