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

        <style type="text/css">
        
        .vid {
            position: relative;
            padding-bottom: 56.25%;
            padding-top: 30px; height: 0; overflow: hidden;
        }
        .vid iframe,
        .vid object,
        .vid embed {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .cuadro_intro_hover{
                padding: 0px;
                position: relative;
                overflow: hidden;
                height: 200px;
            }
        .cuadro_intro_hover:hover .caption{
            opacity: 1;
            transform: translateY(-150px);
            -webkit-transform:translateY(-150px);
            -moz-transform:translateY(-150px);
            -ms-transform:translateY(-150px);
            -o-transform:translateY(-150px);
        }
        .cuadro_intro_hover img{
            z-index: 4;
        }
        .cuadro_intro_hover .caption{
            position: absolute;
            top:150px;
            -webkit-transition:all 0.3s ease-in-out;
            -moz-transition:all 0.3s ease-in-out;
            -o-transition:all 0.3s ease-in-out;
            -ms-transition:all 0.3s ease-in-out;
            transition:all 0.3s ease-in-out;
            width: 100%;
        }
        .cuadro_intro_hover .blur{
            background-color: rgba(0,0,0,0.7);
            height: 300px;
            z-index: 5;
            position: absolute;
            width: 100%;
        }
        .cuadro_intro_hover .caption-text{
            z-index: 10;
            color: #fff;
            position: absolute;
            height: 300px;
            text-align: center;
            top:-20px;
            width: 100%;
        }
    </style>

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

         <div id="cerita" style="padding-bottom: 50px;">
             <h2>Detail Cerita</h2>

             <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- the actual blog post: title/author/date/content -->
                        <center>
                            <h1><a href="">{{ $cerita->judul }}</a></h1>
                            <p class="lead"><i class="fa fa-user"></i> Penulis <a href="">{{ $cerita->penulis }}</a>
                            </p>
                        </center>

                        <hr>

                        <center>
                            <p><i class="fa fa-calendar"></i> Posted on {{ $cerita->updated_at }}</p>
                            <p><i class="fa fa-tags"></i> Tags: 
                                <span class="badge badge-info">{{ $cerita->bahasa->bahasa }}</span>
                                <span class="badge badge-info">{{ $cerita->target->target_pembaca }}</span>
                                <span class="badge badge-info">@foreach($cerita->genre as $item)<strong><span>{{ $item->nama_genre }}</span></strong>,
                                @endforeach</span>
                        </center> 

                        <hr>

                        <center>
                        @if (isset($cerita->foto))
                            <img class="img-responsive" src="{{ asset('fotoupload/' . $cerita->foto) }}">
                        @else
                            <img class="img-responsive" src="{{ asset('fotoupload/dummyfemale.jpg') }}">
                        @endif
                        </center>

                        <hr>

                        <p>{!! ($cerita->cerita) !!}</p>

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