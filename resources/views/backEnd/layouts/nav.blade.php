<!--sidebar-menu-->
<div id="sidebar"><a href="{{url('/admin')}}" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li{{$menu_active==1? ' active':''}}><a href="{{url('/index')}}"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
        <li{{$menu_active==1? ' active':''}}> <a href="{{url('/admin')}}"><i class="icon icon-th-list"></i> <span>Daftar Pesanan</span></a>
        </li>
        <li class="submenu {{$menu_active==2? ' active':''}}"> <a href="#"><i class="icon icon-th-list"></i> <span>Kategori</span></a>
            <ul>
                <li><a href="{{url('/admin/category/create')}}">Tambah Kategori Baru</a></li>
                <li><a href="{{route('category.index')}}">Daftar Kategori</a></li>
            </ul>
        </li>
        <li class="submenu {{$menu_active==3? ' active':''}}"> <a href="#"><i class="icon icon-th-list"></i> <span>Produk</span></a>
            <ul>
                <li><a href="{{url('/admin/product/create')}}">Tambah Produk Baru</a></li>
                <li><a href="{{route('product.index')}}">Daftar Produk</a></li>
            </ul>
        </li>
    </ul>
</div>
<!--sidebar-menu-->
