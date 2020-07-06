<div id="pencarian">
{!! Form::open(['url' => 'cerita/cari', 'method' => 'GET', 'id' => 'form-pencarian']) !!}
     <div class="row">    

        <div class="col-md-2">
             {!! Form::select('id_bahasa', $list_bahasa, (! empty($id_bahasa) ? $id_bahasa : null), ['id' => 'id_bahasa', 'class' => 'form-control', 'placeholder' => '-Bahasa-']) !!}
         </div>

         <div class="col-md-2">
             {!! Form::select('id_target', $list_target, (! empty($id_target) ? $id_target : null), ['id' => 'id_target', 'class' => 'form-control', 'placeholder' => '-Target Pembaca-']) !!}
         </div>

        <div class="col-md-8">
            <div class="input-group">
            {!! Form:: text('kata_kunci', (! empty($kata_kunci)) ? $kata_kunci : null,['class' => 'form-control', 'placeholder' => 'Masukkan Judul']) !!}
            <span class="input-group-btn">
            {!! Form::button('Cari', ['class' => 'btn btn-default', 'type' => 'submit']) !!}
            </span>
            </div>
        </div>
    </div>
{!! Form::close() !!}
</div>