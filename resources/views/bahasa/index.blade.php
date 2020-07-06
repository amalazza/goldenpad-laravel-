 @extends('template')

 @section('main')
     <div id="bahasa">
         <h2>Bahasa</h2>

         @include('_partial.flash_message')

         @if (count($bahasa_list) > 0)
            <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Bahasa</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0; ?>
                    <?php foreach($bahasa_list as $bahasa): ?>
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $bahasa->bahasa }}</td>
                        <td>
                            <div class="box-button">
                                {{ link_to('bahasa/' . $bahasa->id . '/edit', 'Edit', ['class' => 'btn btn-warning btn-sm']) }}
                            </div>
                            <div class="box-button">
                                {!! Form::open(['method' => 'DELETE', 'action' => ['BahasaController@destroy', $bahasa->id]]) !!}
                                    {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                                {!! Form::close() !!}
                            </div>
                        </td>
                    </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        @else
            <p>Tidak ada data bahasa.</p>
        @endif

        <div class="tombol-nav" style="padding-bottom: 70px;">
            <a href="bahasa/create" class="btn btn-primary">Tambah Bahasa</a>
        </div>

    </div> <!-- / #kelas -->
@stop

@section('footer')
   @include('footer')
@stop