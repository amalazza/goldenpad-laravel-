@extends('template')

@section('main')
    <div id="target">
        <h2>Tambah Target Pembaca</h2>

        {!! Form::open(['url' => 'target']) !!}
            @include('target.form', ['submitButtonText' => 'Tambah Target Pembaca'])
        {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop