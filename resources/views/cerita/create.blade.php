@extends('template')

@section('main')
    <div id="cerita">
        <h2>Tambah Cerita</h2>

        {!! Form::open(['url' => 'cerita', 'files' => true]) !!}
            @include('cerita.form', ['submitButtonText' => 'Tambah Cerita'])
        {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop