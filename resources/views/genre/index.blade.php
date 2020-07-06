 @extends('template')

 @section('main')
     <div id="genre">
         <h2>Genre</h2>

         @include('_partial.flash_message')

         @if (count($genre_list) > 0)
            <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Genre</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0; ?>
                    <?php foreach($genre_list as $genre): ?>
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $genre->nama_genre }}</td>
                        <td>
                            <div class="box-button">
                                {{ link_to('genre/' . $genre->id . '/edit', 'Edit', ['class' => 'btn btn-warning btn-sm']) }}
                            </div>
                            <div class="box-button">
                                {!! Form::open(['method' => 'DELETE', 'action' => ['GenreController@destroy', $genre->id]]) !!}
                                    {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                                {!! Form::close() !!}
                            </div>
                        </td>
                    </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        @else
            <p>Tidak ada data genre.</p>
        @endif

        <div class="tombol-nav" style="padding-bottom: 70px;">
            <a href="genre/create" class="btn btn-primary">Tambah Genre</a>
        </div>

    </div> <!-- / #genre -->
@stop

@section('footer')
   @include('footer')
@stop