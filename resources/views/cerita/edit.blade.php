@extends('template')

@section('main')
    <div id="cerita">
        <h2>Edit Cerita</h2>

        {!! Form::model($cerita, ['method' => 'PATCH', 'files' => true, 'action' => ['CeritaController@update', $cerita->id]]) !!}
            @include('cerita.form', ['submitButtonText' => 'Update Cerita'])
        {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop