@extends('template')

@section('main')
    <div id="target">
    <h2>Edit Target Pembaca</h2>

    {!! Form::model($target, ['method' => 'PATCH', 'action' => ['TargetController@update', $target->id]]) !!}
        @include('target.form', ['submitButtonText' => 'Update Target Pembaca'])
    {!! Form::close() !!}
    </div>
@stop

@section('footer')
    @include('footer')
@stop