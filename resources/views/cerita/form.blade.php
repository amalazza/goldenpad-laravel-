@if (isset($cerita))
    {!! Form::hidden('id', $cerita->id) !!}
@endif


<!-- ISBN -->
@if ($errors->any())
<div class="form-group {{ $errors->has('isbn') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
     {!! Form::label('isbn', 'ISBN:', ['class' => 'control-label']) !!}
     {!! Form::text('isbn', null, ['class' => 'form-control']) !!}
     @if ($errors->has('isbn'))
        <span class="help-block">{{ $errors->first('isbn') }}</span>
     @endif
</div>


<!-- PENULIS -->
@if ($errors->any())
<div class="form-group {{ $errors->has('penulis') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
     {!! Form::label('penulis', 'Penulis:', ['class' => 'control-label']) !!}
     {!! Form::text('penulis', null, ['class' => 'form-control']) !!}
     @if ($errors->has('penulis'))
        <span class="help-block">{{ $errors->first('penulis') }}</span>
     @endif
</div>

<!-- JUDUL -->
@if ($errors->any())
<div class="form-group {{ $errors->has('judul') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
     {!! Form::label('judul', 'Judul:', ['class' => 'control-label']) !!}
     {!! Form::text('judul', null, ['class' => 'form-control']) !!}
     @if ($errors->has('judul'))
        <span class="help-block">{{ $errors->first('judul') }}</span>
     @endif
</div>

<!-- BAHASA -->
@if ($errors->any())
    <div class="form-group {{ $errors->has('id_bahasa') ? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
    {!! Form::label('id_bahasa', 'Bahasa:', ['class' => 'control-label']) !!}
    @if(count($list_bahasa) > 0)
        {!! Form::select('id_bahasa', $list_bahasa, null, ['class' => 'form-control', 'id' => 'id_bahasa', 'placeholder' => 'Pilih Bahasa']) !!}
     @else
       <p>Tidak ada pilihan bahasa, buat dulu ya...!</p>
   @endif
   @if ($errors->has('id_bahasa'))
       <span class="help-block">{{ $errors->first('id_bahasa') }}</span>
   @endif
</div>

<!-- TARGET -->
@if ($errors->any())
    <div class="form-group {{ $errors->has('id_target') ? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
    {!! Form::label('id_target', 'Target:', ['class' => 'control-label']) !!}
    @if(count($list_target) > 0)
        {!! Form::select('id_target', $list_target, null, ['class' => 'form-control', 'id' => 'id_target', 'placeholder' => 'Pilih Target Pembaca']) !!}
     @else
       <p>Tidak ada pilihan target pembaca, buat dulu ya...!</p>
   @endif
   @if ($errors->has('id_target'))
       <span class="help-block">{{ $errors->first('id_target') }}</span>
   @endif
</div>

<!-- GENRE -->
@if ($errors->any())
<div class="form-group {{ $errors->has('genre_cerita') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
{!! Form::label('genre_cerita', 'Genre:', ['class' => 'control-label']) !!}
@if(count($list_genre) > 0)
    @foreach($list_genre as $key => $value)
        <div class="checkbox">
            <label>{!! Form::checkbox('genre_cerita[]', $key, null) !!} {{ $value }}</label>
        </div>
    @endforeach
@else
    <p>Tidak ada pilihan genre, buat dulu ya...!</p>
@endif
</div>

<!-- FOTO -->
@if ($errors->any())
<div class="form-group {{ $errors->has('foto') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
    {!! Form::label('foto', 'Cover:') !!}
    {!! Form::file('foto') !!}
    @if ($errors->has('foto'))
        <span class="help-block">{{ $errors->first('foto') }}</span>
    @endif

    <!-- MENAMPILKAN FOTO -->
    @if (isset($cerita))
        @if (isset($cerita->foto))
            <img src="{{ asset('fotoupload/' . $cerita->foto) }}" style="height: 150px; width: 120px;">
        @else
            <img src="{{ asset('fotoupload/dummyfemale.jpg') }}" style="height: 150px; width: 120px;">
        @endif
    @endif
</div>

<!-- deskripsi -->
@if ($errors->any())
<div class="form-group {{ $errors->has('deskripsi') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
     {!! Form::label('deskripsi', 'Deskripsi:', ['class' => 'control-label']) !!}
     {!! Form::textarea('deskripsi', null, ['class' => 'form-control']) !!}
     @if ($errors->has('deskripsi'))
        <span class="help-block">{{ $errors->first('deskripsi') }}</span>
     @endif
</div>


<!-- cerita -->
@if ($errors->any())
<div class="form-group {{ $errors->has('cerita') ? 'has-error' : 'has-success' }}">
@else
<div class="form-group">
@endif
     {!! Form::label('cerita', 'Cerita:', ['class' => 'control-label']) !!}
     {!! Form::textarea('cerita', null, ['class' => 'form-control ckeditor'], ['id' => 'ckedtor']) !!}
     @if ($errors->has('cerita'))
        <span class="help-block">{{ $errors->first('cerita') }}</span>
     @endif
</div>

<!-- SUBMIT -->
<div class="form-group"  style="padding-bottom: 50px;">
    {!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
</div>