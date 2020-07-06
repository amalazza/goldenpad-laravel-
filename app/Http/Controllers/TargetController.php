<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\TargetRequest;
use App\Target;
use Session;

class TargetController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $target_list = Target::all();
        return view('target/index', compact('target_list'));
    }

    public function create() {
        return view('target.create');
    }

    public function store(TargetRequest $request) {
        Target::create($request->all());
        Session::flash('flash_message', 'Data target berhasil disimpan.');
        return redirect('target');
    }

    public function edit(Target $target) {
        return view('target.edit', compact('target'));
    }

    public function update(Target $target, TargetRequest $request) {
        $target->update($request->all());
        Session::flash('flash_message', 'Data target berhasil diupdate.');
        return redirect('target');
    }

    public function destroy(Target $target) {
        $target->delete();
        Session::flash('flash_message', 'Data target berhasil dihapus.');
        Session::flash('penting', true);
        return redirect('target');
    }
}
