 @extends('template')

 @section('main')
     <div id="target">
         <h2>Target Pembaca</h2>

         @include('_partial.flash_message')

         @if (count($target_list) > 0)
            <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Target Pembaca</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0; ?>
                    <?php foreach($target_list as $target): ?>
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $target->target_pembaca }}</td>
                        <td>
                            <div class="box-button">
                                {{ link_to('target/' . $target->id . '/edit', 'Edit', ['class' => 'btn btn-warning btn-sm']) }}
                            </div>
                            <div class="box-button">
                                {!! Form::open(['method' => 'DELETE', 'action' => ['TargetController@destroy', $target->id]]) !!}
                                    {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                                {!! Form::close() !!}
                            </div>
                        </td>
                    </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        @else
            <p>Tidak ada data target pembaca.</p>
        @endif

        <div class="tombol-nav" style="padding-bottom: 70px;">
            <a href="target/create" class="btn btn-primary">Tambah Target Pembaca</a>
        </div>

    </div> <!-- / #kelas -->
@stop

@section('footer')
   @include('footer')
@stop