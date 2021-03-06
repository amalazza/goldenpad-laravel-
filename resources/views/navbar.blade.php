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
    <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('images/logo2.png') }}" style="width: 135px;"></a>
  </div>
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

    <!-- Navbar Link -->
    <ul class="nav navbar-nav">
      {{-- About --}}
      @if (!empty($halaman) && $halaman == 'about')
        <li class="active"><a href="{{ url('about') }}">About <span class="sr-only">(current)</span></a></li>
      @else
        <li><a href="{{ url('about') }}">About</a></li>
      @endif

      {{-- Cerita --}}
      @if (!empty($halaman) && $halaman == 'cerita')
        <li class="active"><a href="{{ url('cerita') }}">Cerita <span class="sr-only">(current)</span></a></li>
      @else
        <li><a href="{{ url('cerita') }}">Cerita</a></li>
      @endif

      {{-- Bahasa --}}
      @if (Auth::check())
        @if (!empty($halaman) && $halaman == 'bahasa')
          <li class="active"><a href="{{ url('bahasa') }}">Bahasa <span class="sr-only">(current)</span></a></li>
        @else
          <li><a href="{{ url('bahasa') }}">Bahasa</a></li>
        @endif
      @endif

      {{-- Target Pembaca --}}
      @if (Auth::check())
        @if (!empty($halaman) && $halaman == 'target')
          <li class="active"><a href="{{ url('target') }}">Target Pembaca <span class="sr-only">(current)</span></a></li>
        @else
          <li><a href="{{ url('target') }}">Target Pembaca</a></li>
        @endif
      @endif

      {{-- Genre --}}
      @if (Auth::check())
        @if (!empty($halaman) && $halaman == 'genre')
          <li class="active"><a href="{{ url('genre') }}">Genre <span class="sr-only">(current)</span></a></li>
        @else
          <li><a href="{{ url('genre') }}">Genre</a></li>
        @endif
      @endif

      {{-- Admin --}}
      @if (Auth::check() && Auth::user()->level == 'admin')
        @if (!empty($halaman) && $halaman == 'user')
          <li class="active"><a href="{{ url('user') }}">Admin <span class="sr-only">(current)</span></a></li>
        @else
          <li><a href="{{ url('user') }}">Admin</a></li>
        @endif
      @endif
    </ul> <!-- / Navbar Link -->


    <!-- Link Login / Logout -->
    <ul class="nav navbar-nav navbar-right">
        @if (Auth::check())
            <li class="nav-item dropdown">
                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }} <span class="caret"></span>
                </a>

                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                     document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
            </li>
        @else
            <li class="nav-item">
                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
            </li>
        @endif
    </ul><!-- /.logout link -->


  </div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->
</nav>



