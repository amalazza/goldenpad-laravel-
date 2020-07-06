<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cerita;
use App\Bahasa;
use App\Target;
use App\Genre;
use App\Http\Requests\CeritaRequest;
use Storage;
use Session;


class CeritaController extends Controller
{
    public function __construct() {
        $this->middleware('auth', ['except' => [
            'index', 'show', 'cari'
        ]]);
    }

    /*
    | -------------------------------------------------------------------------------------------------------
    | INDEX
    | -------------------------------------------------------------------------------------------------------
    */
    public function index() {
        $cerita_list = Cerita::paginate(5);
        $jumlah_cerita = Cerita::count();
        $list_bahasa = Bahasa::pluck('bahasa', 'id');
        $list_target = Target::pluck('target_pembaca', 'id');
        return view('cerita.index', compact('list_bahasa', 'list_target', 'cerita_list', 'jumlah_cerita'));
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | SHOW DETAIL
    | -------------------------------------------------------------------------------------------------------
    */
    public function show($id) {
        $cerita = Cerita::findOrFail($id);
        return view('cerita.show', compact('cerita'));
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | CREATE
    | -------------------------------------------------------------------------------------------------------
    */
    public function create() {
        $list_bahasa = Bahasa::pluck('bahasa', 'id');
        $list_target = Target::pluck('target_pembaca', 'id');
        $list_genre = Genre::pluck('nama_genre', 'id');
        return view('cerita.create', compact('list_bahasa', 'list_target', 'list_genre'));
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | EDIT
    | -------------------------------------------------------------------------------------------------------
    */
    public function edit($id) {
        $cerita = Cerita::findOrFail($id);

        $list_bahasa = Bahasa::pluck('bahasa', 'id');
        $list_target = Target::pluck('target_pembaca', 'id');
        $list_genre = Genre::pluck('nama_genre', 'id');

        return view('cerita.edit', compact('list_bahasa', 'list_target', 'list_genre', 'cerita'));
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | CREATE
    | -------------------------------------------------------------------------------------------------------
    */
    public function store(CeritaRequest $request) {
        $input = $request->all();

        // Upload foto.
        if ($request->hasFile('foto')) {
            $input['foto'] = $this->uploadFoto($request);
        }

        // Insert cerita.
        $cerita = Cerita::create($input);

        // Insert Telepon.
        // if ($request->filled('nomor_telepon')) {
        //     $this->insertTelepon($cerita, $request);
        // }

        // Insert Genre.
        $cerita->genre()->attach($request->input('genre_cerita'));

        // Flass message.
        Session::flash('flash_message', 'Data cerita berhasil disimpan.');

        return redirect('cerita');
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | UPDATE
    | -------------------------------------------------------------------------------------------------------
    */
    public function update($id, CeritaRequest $request) {
        $cerita = Cerita::findOrFail($id);
        $input = $request->all();

        // Update foto.
        if ($request->hasFile('foto')) {
            $input['foto'] = $this->updateFoto($cerita, $request);
        }

        // Update siswa.
        $cerita->update($input);


        // Update hobi.
        $cerita->genre()->sync($request->input('genre_cerita'));

        // Flash message.
        Session::flash('flash_message', 'Data cerita berhasil diupdate.');

        return redirect('cerita');
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | DESTROY / DELETE
    | -------------------------------------------------------------------------------------------------------
    */
    // public function destroy(Cerita $cerita) {
    //     // Hapus foto kalau ada.
    //     $this->hapusFoto($cerita);

    //     $cerita->delete();

    //     // Flash message.
    //     Session::flash('flash_message', 'Data cerita berhasil dihapus.');
    //     Session::flash('penting', true);

    //     return redirect('cerita');
    // }

    // public function destroy($id){

    //     $cerita = Cerita::findOrFail($id);
    //     // hapus kalau ada fotonya
    //     $exist = Storage::disk('foto')->exists($cerita->foto);
    //     if (isset($siswa->foto) && $exist){
    //         $delete = Storage::disk('foto')->delete($cerita->foto);
    //     }
       
    //     $cerita -> delete();
    //     // Flash input / alert
    //     Session::flash('flash_message', 'Data Berhasill Dihapus...');
    //     Session::flash('penting', true);
    //     return redirect ('cerita');
    // }

    public function destroy($id){
    // public function destroy(Siswa $siswa) {

        $cerita = Cerita::findOrFail($id);
        // hapus kalau ada fotonya
        $is_foto_exist = Storage::disk('foto')->exists($cerita->foto);

        if ($is_foto_exist) {
            Storage::disk('foto')->delete($cerita->foto);
        }
       
        $cerita -> delete();
        // Flash input / alert
        Session::flash('flash_message', 'Data cerita berhasil dihapus.');
        Session::flash('penting', true);
        return redirect ('cerita');
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | CARI
    | -------------------------------------------------------------------------------------------------------
    */
    public function cari(Request $request) {
        $kata_kunci = trim($request->input('kata_kunci'));

        if (! empty($kata_kunci)) {
            // $jenis_kelamin = $request->input('jenis_kelamin');
            $id_bahasa = $request->input('id_bahasa');
            $id_target = $request->input('id_target');

            // Query
            $query = Cerita::where('judul', 'LIKE', '%' . $kata_kunci . '%');
            // (! empty($jenis_kelamin)) ? $query->JenisKelamin($jenis_kelamin) : '';
            (! empty($id_bahasa)) ? $query->Bahasa($id_bahasa) : '';
            (! empty($id_target)) ? $query->Target($id_target) : '';

            $cerita_list = $query->paginate(2);

            // URL Links pagination
            // $pagination = (! empty($jenis_kelamin)) ? $cerita_list->appends(['jenis_kelamin' => $jenis_kelamin]) : '';
            $pagination = (! empty($id_bahasa)) ? $pagination = $cerita_list->appends(['id_bahasa' => $id_bahasa]) : '';
            $pagination = (! empty($id_target)) ? $pagination = $cerita_list->appends(['id_target' => $id_target]) : '';
            $pagination = $cerita_list->appends(['kata_kunci' => $kata_kunci]);

            $jumlah_cerita = $cerita_list->total();
            $list_bahasa = Bahasa::pluck('bahasa', 'id');
            $list_target = Target::pluck('target_pembaca', 'id');
            return view('cerita.index', compact('list_bahasa', 'list_target', 'cerita_list', 'kata_kunci', 'pagination', 'jumlah_cerita'));
        }

        return redirect('cerita');
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | INSERT TELEPON
    | -------------------------------------------------------------------------------------------------------
    */
    // private function insertTelepon(Siswa $siswa, SiswaRequest $request) {
    //     $telepon = new Telepon;
    //     $telepon->nomor_telepon = $request->input('nomor_telepon');
    //     $siswa->telepon()->save($telepon);
    // }


    /*
    | -------------------------------------------------------------------------------------------------------
    | UPDATE TELEPON
    | -------------------------------------------------------------------------------------------------------
    */
    // private function updateTelepon(Siswa $siswa, SiswaRequest $request) {
    //     if ($siswa->telepon) {
    //         // Jika telp diisi, update.
    //         if ($request->filled('nomor_telepon')) {
    //             $telepon = $siswa->telepon;
    //             $telepon->nomor_telepon = $request->input('nomor_telepon');
    //             $siswa->telepon()->save($telepon);
    //         }
    //         // Jika telp tidak diisi, hapus.
    //         else {
    //             $siswa->telepon()->delete();
    //         }
    //     }
    //     // Buat entry baru, jika sebelumnya tidak ada no telp.
    //     else {
    //         if ($request->filled('nomor_telepon')) {
    //             $telepon = new Telepon;
    //             $telepon->nomor_telepon = $request->input('nomor_telepon');
    //             $siswa->telepon()->save($telepon);
    //         }
    //     }
    // }


    /*
    | -------------------------------------------------------------------------------------------------------
    | UPLOAD FOTO
    | -------------------------------------------------------------------------------------------------------
    */
    private function uploadFoto(CeritaRequest $request) {
        $foto = $request->file('foto');
        $ext  = $foto->getClientOriginalExtension();

        if ($request->file('foto')->isValid()) {
            $foto_name   = date('YmdHis'). ".$ext";
            $request->file('foto')->move('fotoupload', $foto_name);
            return $foto_name;
        }
        return false;
    }

    /*
    | -------------------------------------------------------------------------------------------------------
    | UPDATE FOTO
    | -------------------------------------------------------------------------------------------------------
    */
    private function updateFoto(Cerita $cerita, CeritaRequest $request) {
        // Jika user mengisi foto.
        if ($request->hasFile('foto')) {
            // Hapus foto lama jika ada foto baru.
            $exist = Storage::disk('foto')->exists($cerita->foto);
            if (isset($cerita->foto) && $exist) {
                $delete = Storage::disk('foto')->delete($cerita->foto);
            }

            // Upload foto baru.
            $foto = $request->file('foto');
            $ext  = $foto->getClientOriginalExtension();
            if ($request->file('foto')->isValid()) {
                $foto_name   = date('YmdHis'). ".$ext";
                $upload_path = 'fotoupload';
                $request->file('foto')->move($upload_path, $foto_name);
                return $foto_name;
            }
        }
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | HAPUS FOTO
    | -------------------------------------------------------------------------------------------------------
    */
    private function hapusFoto(Siswa $siswa) {
        $is_foto_exist = Storage::disk('foto')->exists($siswa->foto);

        if ($is_foto_exist) {
            Storage::disk('foto')->delete($siswa->foto);
        }
    }


    /*
    | -------------------------------------------------------------------------------------------------------
    | DATE MUTATOR
    | -------------------------------------------------------------------------------------------------------
    */
    public function dateMutator() {
        $cerita = Cerita::findOrFail(1);
        $nama = $cerita->judul;
        // $tanggal_lahir = $siswa->tanggal_lahir->format('d-m-Y');
        // $ulang_tahun = $siswa->tanggal_lahir->addYears(30)->format('d-m-Y');
        // return "Siswa <strong>{$nama}</strong> lahir pada <strong>{$tanggal_lahir}</strong>.<br>
        //         Ulang tahun ke-30 akan jatuh pada <strong>{$ulang_tahun}</strong>.";
    }

}