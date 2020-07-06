<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Goldenpad</title>

    {{-- Memanggil Bootstrap. Komentar ini tidak akan tampak di browser. --}}
    <link href="{{ asset('bootstrap-3.3.6-dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

    <!-- ckeditor -->
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>

    <!-- blog -->
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <!--[if lt IE 9]>
      <script src="{{ asset('js/html5shiv.min.js') }}"></script>
      <script src="{{ asset('js/respond.min.js') }}"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
    	<nav class="navbar navbar-default">
			<div class="container-fluid">
			  <div class="navbar-header">
			    <button type="button" class="navbar-toggle collapsed"
			            data-toggle="collapse"
			            data-target="#bs-example-navbar-collapse-1"
			            aria-expanded="false">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand" href="{{ url('homepageuser') }}"><img src="{{ asset('images/logo2.png') }}" style="width: 135px;"></a>
			  </div>
			  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

			    <!-- Navbar Link -->
			    <ul class="nav navbar-nav">
                  {{-- About --}}
                  @if (!empty($halaman) && $halaman == 'aboutuser')
                    <li class="active"><a href="{{ url('aboutuser') }}">About <span class="sr-only">(current)</span></a></li>
                  @else
                    <li><a href="{{ url('aboutuser') }}">About</a></li>
                  @endif
                </ul>

			  </div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>

	    <div id="homepageuser" style="margin-bottom: 70px;">
	       <h2>Homepage (User)</h2>
			<div class="container">
			<div class="row">
			    <div class="col-md-1"></div>
				<div class="col-md-10">
					<div id="postlist">
					@include('_partial.flash_message')

			       	@include('pages.form_pencarian')

			        @if (!empty($cerita_list))
			        @foreach($cerita_list as $cerita)
			        <div class="panel" style="border-color: #ddd;">
			                <div class="panel-heading">
			                    <div class="text-center">
			                        <div class="row">
			                            <div class="col-sm-9">
			                                <h3 class="pull-left">{{ $cerita->judul }}</h3>
			                            </div>
			                            <div class="col-sm-3">
			                                <h4 class="pull-right">
			                                <small><em>{{ $cerita->updated_at }}</em></small>
			                                </h4>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			                
			            <div class="panel-body">
			                <div class="thumbnail">
			                    @if (isset($cerita->foto))
			                        <img src="{{ asset('fotoupload/' . $cerita->foto) }}">
			                    @else
			                        <img src="{{ asset('fotoupload/dummyfemale.jpg') }}">
			                    @endif
			                </div>
			                {{ $cerita->deskripsi }}
			                {{ link_to('homepageuser/' . $cerita->id, 'Read more') }}

			            </div>
			            
			            <div class="panel-footer">
			                <span class="label label-default">{{ $cerita->bahasa->bahasa }}</span>
			                <span class="label label-default">{{ $cerita->target->target_pembaca }}</span> 
			                <span class="label label-default">
			                	@foreach($cerita->genre as $item)
	                			<strong><span>{{ $item->nama_genre }}</span></strong>,
	               				@endforeach
	               			</span>
			            </div>
			        </div>
			        @endforeach
			        @else
	                <p>Tidak ada data cerita.</p>
	            	@endif

			    </div>

			    <div class="table-nav">
	             <div class="jumlah-data">
	                 <strong> Jumlah Cerita: {{ $jumlah_cerita }} </strong>
	             </div>
	             <div class="paging">
	                {{ $cerita_list->links() }}
	            </div>
	        </div>
					<!-- <div class="text-center"><a href="#" id="loadmore" class="btn btn-primary">Older Posts...</a></div> -->
			</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
				</div>
				<div class="col-md-1">
				</div>
			</div>
			</div>
	    </div>
	</div>
	<div id="footer">
	    <p>&copy; 2020 Goldenpad By amalazza</p>
	</div>

    <script src="{{ asset('js/jquery-2.2.1.min.js') }}"></script>
    <script src="{{ asset('bootstrap-3.3.6-dist/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/siswakuapp.js') }}"></script>
  </body>
</html>