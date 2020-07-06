@if (isset($bahasa))
    {!! Form::hidden('id', $bahasa->id) !!}
@endif

@if ($errors->any())
    <div class="form-group {{ $errors->has('bahasa') ? 'has-error' : 'has-success' }}">
@else
     <div class="form-group">
@endif
    {!! Form::label('bahasa', 'Bahasa:', ['class' => 'control-label']) !!}
    {!! Form::text('bahasa', null, ['class' => 'form-control']) !!}
    @if ($errors->has('bahasa'))
        <span class="help-block">{{ $errors->first('bahasa') }}</span>
    @endif
</div>

<div class="form-group">
    {!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
</div>