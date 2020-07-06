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
      @include('navbar')
      @yield('main')
    </div>

    @yield('footer')

    <script src="{{ asset('js/jquery-2.2.1.min.js') }}"></script>
    <script src="{{ asset('bootstrap-3.3.6-dist/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/siswakuapp.js') }}"></script>
  </body>
</html>