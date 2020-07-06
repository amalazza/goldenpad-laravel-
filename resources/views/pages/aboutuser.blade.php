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
    <div id="aboutuser">
        <h2>About (User)</h2>
        
        <p>Aplikasi <strong>goldenpad</strong>
        adalah aplikasi berbasis website yang berfungsi untuk manajemen cerita pendek.</p>

        <br>
        <p>Aplikasi <strong>goldenpad</strong>
        dibuat untuk ulangan akhir semester politeknik negeri jakarta tahun ajaran 2019/2020 jurusan teknik informatika & komputer.</p>
        <p>Aplikasi <strong>goldenpad</strong>
        dibuat oleh : 
        <ol style="list-style: none">
          <li>Nama : Nurul Amala Azza</li>
          <li>NIM : 4817040347 </li>
          <li>Kelas : CCIT 6B </li>
          <li>Matkul : Web Programming 3</li>
        </p>
        
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