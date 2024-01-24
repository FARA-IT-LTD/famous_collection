@extends('layouts.master')

@section('title')
	{{ $brand->title . ' | '. env('APP_NAME') }}
@endsection

@section('content')

	<!-- Start of Main -->
        <main class="main">
            <!-- Start of Breadcrumb -->
            <nav class="breadcrumb-nav">
                <div class="container">
                    <ul class="breadcrumb bb-no">
                        <li><a href="{{ route('products') }}">Home</a></li>
                        <li><a href="{{ route('products') }}">Brand</a></li>
                        <li>{{ $brand->title }}</li>
                    </ul>
                </div>
            </nav>
            <!-- End of Breadcrumb -->

            <!-- Start of Page Content -->
            <div class="page-content mb-10">
                
                <div class="container-fluid">
                    
                    <!-- Start of Shop Content -->
                    <div class="shop-content">
                        <h2 class="title justify-content-center ls-normal mb-5 pt-4">Products</h2>
                        <!-- Start of Shop Main Content -->
                        <div class="main-content">
                            <!-- <nav class="toolbox sticky-toolbox sticky-content fix-top">
                                <div class="toolbox-left">
                                    <a href="#" class="btn btn-primary btn-outline btn-rounded left-sidebar-toggle 
                                        btn-icon-left"><i class="w-icon-category"></i><span>Filters</span></a>
                                    <div class="toolbox-item toolbox-sort select-box text-dark">
                                        <label>Sort By :</label>
                                        <select name="orderby" class="form-control">
                                            <option value="default" selected="selected">Default sorting</option>
                                            <option value="popularity">Sort by popularity</option>
                                            <option value="rating">Sort by average rating</option>
                                            <option value="date">Sort by latest</option>
                                            <option value="price-low">Sort by pric: low to high</option>
                                            <option value="price-high">Sort by price: high to low</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="toolbox-right">
                                    <div class="toolbox-item toolbox-show select-box">
                                        <select name="count" class="form-control">
                                            <option value="9">Show 9</option>
                                            <option value="12" selected="selected">Show 12</option>
                                            <option value="24">Show 24</option>
                                            <option value="36">Show 36</option>
                                        </select>
                                    </div>
                                    <div class="toolbox-item toolbox-layout">
                                        <a href="shop-fullwidth-banner.html" class="icon-mode-grid btn-layout active">
                                            <i class="w-icon-grid"></i>
                                        </a>
                                        <a href="shop-list.html" class="icon-mode-list btn-layout">
                                            <i class="w-icon-list"></i>
                                        </a>
                                    </div>
                                </div>
                            </nav> -->
                            <div class="product-wrapper row cols-xl-6 cols-lg-5 cols-md-4 cols-sm-3 cols-2">
                                
                                @foreach($products as $product)
                                @include('partials.product')
                                @endforeach
                            </div>

                            <div class="toolbox toolbox-pagination justify-content-between">
                                <!-- <p class="showing-info mb-2 mb-sm-0">
                                    Showing<span>1-12 of 60</span>Products
                                </p> -->
                                <ul class="pagination">
                                    {{ $products->links('pagination::bootstrap-4') }}
                                </ul>
                            </div>
                        </div>
                        <!-- End of Shop Main Content -->

                        
                    </div>
                    <!-- End of Shop Content -->
                </div>
            </div>
            <!-- End of Page Content -->
        </main>
        <!-- End of Main -->

@endsection

        