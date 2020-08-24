
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="shop-menu pull-left">
                      <a href="{{url('/')}}"><img src="{{asset('frontEnd/images/home/Kiosta.png')}}" alt="Image" height="65" width="260"></a>
                </div>
                <div class="col-sm">
                    <div class="shop-menu pull-right">
                        <ul>
                        <li> <form action="/" method ="GET" class="header_search_form clearfix">
                            <div class= "search_box icon">
                            <input style="margin-top:9px; type="text" placeholder="Cari Produk" name="cari" id="query" value="{{ request()->input('search') }}" required="required" class="header_search_input" />
                            </div>
                        </form>
                        </li> 
                            <li><a href="{{url('/viewcart')}}"><i class="fa fa-shopping-cart"></i> Keranjang</a></li>
                            @if(Auth::check())
                                <li><a href="{{url('/myaccount')}}"><i class="fa fa-user"></i> Akun</a></li>
                                <li><a href="{{ url('/logout') }}"><i class="fa fa-lock"></i> Keluar </a>
                                </li>
                            @else
                                <li><a href="{{url('/login_page')}}"><i class="fa fa-lock"></i> Masuk</a></li>
                            @endif
                            <li><a href="{{ url('/admin') }}"><i class="fa fa-bullhorn"></i>Mitra UMKM</a>
                            <li><a href="/bantuan"><i class="fa fa-question-circle"></i> Bantuan</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                </div>

                <!-- Search -->
                <div class="col-sm-3">
                    
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
