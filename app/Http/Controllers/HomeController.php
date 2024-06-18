<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Show\Show;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $shows = Show::select()->orderBy('id', 'desc')->take(4)->get();

        $trendingShows = Show::select()->orderBy('name', 'desc')->take(6)->get();

        $trendingAdventure = Show::where('genre', 'LIKE', '%Adventure%')->orderBy('id', 'desc')->take(6)->get();

        $recentShows = Show::select()->orderBy('id', 'desc')->take(6)->get();

        $forYouShows = Show::select()->orderBy('name', 'asc')->take(4)->get();


        return view('home', compact('shows', 'trendingShows', 'trendingAdventure', 'recentShows', 'forYouShows')); // Note the change here
    }
}
