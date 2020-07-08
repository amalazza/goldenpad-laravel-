 @extends('template')

 @section('main')
     <div id="cerita" style="padding-bottom: 50px;">
         <h2>Detail Cerita</h2>

         <table class="table table-striped">
             <tr>
                 <th>ISBN</th>
                <td>{{ $cerita->isbn }}</td>
            </tr>
            <tr>
                <th>Penulis</th>
                <td>{{ $cerita->penulis }}</td>
            </tr>
            <tr>
                <th>Judul</th>
                <td>{{ $cerita->judul }}</td>
            </tr>
            <tr>
                <th>Bahasa</th>
                <td>{{ $cerita->bahasa->bahasa }}</td>
            </tr>
            <tr>
                <th>Target Pembaca</th>
                <td>{{ $cerita->target->target_pembaca }}</td>
            </tr>
            <tr>
                <th>Genre</th>
                <td>
                @foreach($cerita->genre as $item)
                <strong><span>{{ $item->nama_genre }}</span></strong>,
                @endforeach
                </td>
            </tr>
            <tr>
                <th>Cover</th>
                <td>
                    @if (isset($cerita->foto))
                        <img src="{{ asset('fotoupload/' . $cerita->foto) }}" style="height: 150px; width: 120px;">
                    @else
                        <img src="{{ asset('fotoupload/dummyfemale.jpg') }}" style="height: 150px; width: 120px;">
                    @endif
                </td>
            </tr>
            <tr>
                <th>Deskripsi</th>
                <td><p>{{ $cerita->deskripsi }}</p></td>
            </tr>
            <tr>
                <th>Cerita</th>
                <td><p>{!! ($cerita->cerita) !!}</p></td>
            </tr>
        </table>
    </div>
@stop

@section('footer')
    @include('footer')
@stop