<?php

namespace App\Http\Controllers\Anime;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Show\Show;

class AnimeController extends Controller
{
    public function animeDetails($id)
    {
        $show = Show::find($id);

        $randomShows = Show::select()->orderBy('id', 'desc')->take('5')->where('id', '!=', $id)->get();

        return view('shows.anime-details', compact('show', 'randomShows'));
    }
}
