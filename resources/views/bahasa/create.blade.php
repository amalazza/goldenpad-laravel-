@extends('template')

@section('main')
    <div id="bahasa">
        <h2>Tambah Bahasa</h2>

        {!! Form::open(['url' => 'bahasa']) !!}
            @include('bahasa.form', ['submitButtonText' => 'Tambah Bahasa'])
        {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop