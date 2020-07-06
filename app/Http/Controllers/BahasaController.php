<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\BahasaRequest;
use App\Bahasa;
use Session;

class BahasaController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $bahasa_list = Bahasa::all();
        return view('bahasa/index', compact('bahasa_list'));
    }

    public function create() {
        return view('bahasa.create');
    }

    public function store(BahasaRequest $request) {
        Bahasa::create($request->all());
        Session::flash('flash_message', 'Data bahasa berhasil disimpan.');
        return redirect('bahasa');
    }

    public function edit(Bahasa $bahasa) {
        return view('bahasa.edit', compact('bahasa'));
    }

    public function update(Bahasa $bahasa, BahasaRequest $request) {
        $bahasa->update($request->all());
        Session::flash('flash_message', 'Data bahasa berhasil diupdate.');
        return redirect('bahasa');
    }

    public function destroy(Bahasa $bahasa) {
        $bahasa->delete();
        Session::flash('flash_message', 'Data bahasa berhasil dihapus.');
        Session::flash('penting', true);
        return redirect('bahasa');
    }
}
