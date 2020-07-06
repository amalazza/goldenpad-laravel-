<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CeritaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        // Cek apakah CREATE atau UPDATE
        if ($this->method() == 'PATCH') {
            $nisn_rules    = 'required|string|size:4|unique:cerita,isbn,' . $this->get('id');
            
        } else {
            $nisn_rules    = 'required|string|size:4|unique:cerita,isbn';
        }

        return [
            'isbn'          => $nisn_rules,
            'penulis'    => 'required|string|min:2|max:50',
            'judul'    => 'required|string|min:2|max:50',
            'deskripsi'    => 'required|string|min:50|max:1000',
            'cerita'    => 'required|string|min:500|max:10000',
            'id_bahasa'      => 'required',
            'id_target'      => 'required',
            'foto'          => 'sometimes|nullable|image|mimes:jpeg,jpg,png',

        ];
    }
}
