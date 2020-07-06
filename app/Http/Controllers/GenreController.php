<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\GenreRequest;
use App\Genre;
use Session;

class GenreController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $genre_list = Genre::all();
        return view('genre.index', compact('genre_list'));
    }

    public function create() {
        return view('genre.create');
    }

    public function store(GenreRequest $request) {
        Genre::create($request->all());
        Session::flash('flash_message', 'Data genre berhasil disimpan.');
        return redirect('genre');
    }

    public function edit(Genre $genre) {
        return view('genre.edit', compact('genre'));
    }

    public function update(Genre $genre, GenreRequest $request) {
        $genre->update($request->all());
        Session::flash('flash_message', 'Data genre berhasil diupdate.');
        return redirect('genre');
    }

    public function destroy(Genre $genre) {
        $genre->delete();
        Session::flash('flash_message', 'Data genre berhasil dihapus.');
        Session::flash('penting', true);
        return redirect('genre');
    }
}
