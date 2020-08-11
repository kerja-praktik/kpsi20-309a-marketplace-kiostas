
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="{{url('/')}}"><img src="{{asset('frontEnd/images/home/Kiosta.png')}}" alt="Image" height="65" width="260"></a>
                    </div>
                    <div class="btn-group pull-right">
                        <div class="btn-group">
                        </div>
                    </div>
                </div>
                <!-- <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="{{url('/viewcart')}}"><i class="fa fa-shopping-cart"></i> Keranjang</a></li>
                            @if(Auth::check())
                                <li><a href="{{url('/myaccount')}}"><i class="fa fa-user"></i> Akun</a></li>
                                <li><a href="{{ url('/logout') }}"><i class="fa fa-lock"></i> Keluar </a></li>
                            @else
                                <li><a href="{{url('/login_page')}}"><i class="fa fa-lock"></i> Masuk</a></li>
                            @endif
                            <li><a href="/bantuan"><i class="fa fa-question-circle"></i> Bantuan</a></li>
                        </ul>
                    </div>
                </div> -->
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
                
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->