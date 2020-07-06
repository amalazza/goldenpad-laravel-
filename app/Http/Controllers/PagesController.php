<?php

namespace App\Http\Controllers;

use App\Cerita;
use App\Bahasa;
use App\Target;
use App\Genre;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function homepageuser() {
    	$cerita_list = Cerita::paginate(5);
        $jumlah_cerita = Cerita::count();
        $list_bahasa = Bahasa::pluck('bahasa', 'id');
        $list_target = Target::pluck('target_pembaca', 'id');
        return view('pages.homepageuser', compact('list_bahasa', 'list_target', 'cerita_list', 'jumlah_cerita'));
        // return view('pages.homepage');
    }

    public function cari(Request $request) {
        $kata_kunci = trim($request->input('kata_kunci'));

        if (! empty($kata_kunci)) {

            // Query
            $query = Cerita::where('judul', 'LIKE', '%' . $kata_kunci . '%');

            $cerita_list = $query->paginate(2);

            // URL Links pagination
            $pagination = $cerita_list->appends(['kata_kunci' => $kata_kunci]);

            $jumlah_cerita = $cerita_list->total();
            return view('pages.homepageuser', compact('cerita_list', 'kata_kunci', 'pagination', 'jumlah_cerita'));
        }

        return redirect('homepageuser');
    }

    public function show($id) {
        $cerita = Cerita::findOrFail($id);
        return view('pages.show', compact('cerita'));
    }

    public function homepageadmin() {
        return view('pages.homepageadmin');
    }

    public function about() {
        return view('pages.about');
    }

    public function aboutuser() {
        return view('pages.aboutuser');
    }
}
