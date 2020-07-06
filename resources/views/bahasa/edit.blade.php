@extends('template')

@section('main')
    <div id="bahasa">
    <h2>Edit Bahasa</h2>

    {!! Form::model($bahasa, ['method' => 'PATCH', 'action' => ['BahasaController@update', $bahasa->id]]) !!}
        @include('bahasa.form', ['submitButtonText' => 'Update Bahasa'])
    {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop