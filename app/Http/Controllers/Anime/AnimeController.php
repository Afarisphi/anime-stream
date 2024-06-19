<?php

namespace App\Http\Controllers\Anime;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Show\Show;
use App\Models\Comment\Comment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Models\View\View;
use App\Models\Episode\Episode;

class AnimeController extends Controller
{
    public function animeDetails($id)
    {
        $show = Show::find($id);

        if (!$show) {
            return redirect()->back()->with('error', 'Show not found.');
        }

        $randomShows = Show::where('id', '!=', $id)->orderBy('id', 'desc')->take(5)->get();
        $comments = Comment::where('show_id', $id)->orderBy('id', 'desc')->take(8)->get();

        if (Auth::check()) {
            $validateViews = View::where('user_id', Auth::user()->id)->where('show_id', $id)->count();

            if ($validateViews == 0) {
                View::create([
                    "show_id" => $id,
                    "user_id" => Auth::user()->id
                ]);
            }
        }

        // getting number
        $numberViews = View::where('show_id', $id)->count();
        $numberComments = Comment::where('show_id', $id)->count();

        return view('shows.anime-details', compact('show', 'randomShows', 'comments', 'numberViews', 'numberComments'));
    }

    public function insertComments(Request $request, $id)
    {
        if (!Auth::check()) {
            return redirect()->back()->with('error', 'You need to be logged in to comment.');
        }

        $request->validate([
            'comment' => 'required|string|max:255',
        ]);

        $insertComments = Comment::create([
            "show_id" => $id,
            "username" => Auth::user()->name,
            "image" => Auth::user()->image,
            "comment" => $request->comment
        ]);

        if ($insertComments) {
            return redirect()->back()->with(['success' => 'Comment Added']);
        }

        return redirect()->back()->with(['error' => 'Failed to add comment']);
    }

    public function animeWatching($show_id, $episode_id)
    {
        $show = Show::find($show_id);

        if (!$show) {
            return redirect()->back()->with('error', 'Show not found.');
        }

        $episode = Episode::where('episode_name', $episode_id)->where('show_id', $show_id)->first();

        if (!$episode) {
            return redirect()->back()->with('error', 'Episode not found.');
        }

        $episodes = Episode::where('show_id', $show_id)->get();
        $comments = Comment::where('show_id', $show_id)->orderBy('id', 'desc')->take(8)->get();

        return view('shows.anime-watching', compact('show', 'episode', 'episodes', 'comments'));
    }
}
