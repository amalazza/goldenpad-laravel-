@if (isset($genre))
{!! Form::hidden('id', $genre->id) !!}
@endif

@if ($errors->any())
<div class="form-group {{ $errors->has('nama_genre') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif

{!! Form::label('nama_genre', 'Nama Genre:', ['class' => 'control-label']) !!}
{!! Form::text('nama_genre', null, ['class' => 'form-control']) !!}

@if ($errors->has('nama_genre'))
<span class="help-block">{{ $errors->first('nama_genre') }}</span>
@endif
</div>

<div class="form-group">
{!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
</div>