@if (isset($target))
    {!! Form::hidden('id', $target->id) !!}
@endif

@if ($errors->any())
    <div class="form-group {{ $errors->has('target_pembaca') ? 'has-error' : 'has-success' }}">
@else
     <div class="form-group">
@endif
    {!! Form::label('target_pembaca', 'Target:', ['class' => 'control-label']) !!}
    {!! Form::text('target_pembaca', null, ['class' => 'form-control']) !!}
    @if ($errors->has('target_pembaca'))
        <span class="help-block">{{ $errors->first('target_pembaca') }}</span>
    @endif
</div>

<div class="form-group">
    {!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
</div>