 @extends('template')

 @section('main')
     <div id="cerita" style="padding-bottom: 50px;">
         <h2>Cerita</h2>

         @include('_partial.flash_message')

         @include('cerita.form_pencarian')

         @if (!empty($cerita_list))
             <table class="table">
                 <thead>
                    <tr>
                        <th>ISBN</th>
                        <th>Penulis</th>
                        <th>Judul</th>
                        <th>Bahasa</th>
                        <th>Target Pembaca</th>
                        <!-- <th>Genre</th> -->
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($cerita_list as $cerita)
                    <tr>
                        <td>{{ $cerita->isbn }}</td>
                        <td>{{ $cerita->penulis }}</td>
                        <td>{{ $cerita->judul }}</td>
                        <td>{{ $cerita->bahasa->bahasa }}</td>
                        <td>{{ $cerita->target->target_pembaca }}</td>
                        <td>
                            <div class="box-button">
                                {{ link_to('cerita/' . $cerita->id, 'Detail', ['class' => 'btn btn-success btn-sm']) }}
                            </div>

                            @if (Auth::check())
                            <div class="box-button">
                                {{ link_to('cerita/' . $cerita->id . '/edit', 'Edit', ['class' => 'btn btn-warning btn-sm']) }}
                            </div>
                            <div class="box-button">
                                {!! Form::open(['method' => 'DELETE', 'action' => ['CeritaController@destroy', $cerita->id]]) !!}
                                {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                                {!! Form::close() !!}
                            </div>
                            @endif

                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            @else
                <p>Tidak ada data cerita.</p>
            @endif

        <div class="table-nav">
             <div class="jumlah-data">
                 <strong> Jumlah Cerita: {{ $jumlah_cerita }} </strong>
             </div>
             <div class="paging">
                {{ $cerita_list->links() }}
            </div>
        </div>

        @if (Auth::check())
        <div class="tombol-nav">
            <a href="{{ url('cerita/create') }}" class="btn btn-primary">Tambah Cerita</a>
        </div>
        @endif

    </div> <!-- / #cerita -->
@stop


@section('footer')
    @include('footer')
@stop
