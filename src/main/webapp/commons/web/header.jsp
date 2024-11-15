<%@include file="/commons/taglib.jsp"%>

<!-- Start: Header Section -->
<header id="header-v1" class="navbar-wrapper">
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-default">
                <div class="row">
                    <div class="col-md-3">
                        <div class="navbar-header">
                            <div class="navbar-brand">
                                <h1>
                                    <a href="${pageContext.request.contextPath}/views/login.jsp">
                                        <img src="${URL}template/assets/images/libraria-logo-v1.png" alt="LIBRARIA" />
                                    </a>
                                </h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <!-- Header Topbar -->
                        <div class="header-topbar hidden-sm hidden-xs">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="topbar-info">
                                        <a href="${URL}template/assets/tel:+61-3-8376-6284"><i class="fa fa-phone"></i>+61-3-8376-6284</a>
                                        <span>/</span>
                                        <a href="${URL}template/assets/mailto:support@libraria.com"><i class="fa fa-envelope"></i>support@libraria.com</a>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="topbar-links">
                                        <a href="${pageContext.request.contextPath}/views/login.jsp"><i class="fa fa-lock"></i>Login / Register</a>
                                        <span>|</span>
                                        <div class="header-cart dropdown">
                                            <a data-toggle="dropdown" class="dropdown-toggle" href="${URL}template/assets/#">
                                                <i class="fa fa-shopping-cart"></i>
                                                <small>0</small>
                                            </a>
                                            <div class="dropdown-menu cart-dropdown">
                                                <ul>
                                                    <li class="clearfix">
                                                        <img src="${URL}template/assets/images/header-cart-image-01.jpg" alt="cart item" />
                                                        <div class="item-info">
                                                            <div class="name">
                                                                <a href="${URL}template/assets/#">The Great Gatsby</a>
                                                            </div>
                                                            <div class="author"><strong>Author:</strong> F. Scott Fitzgerald</div>
                                                            <div class="price">1 X $10.00</div>
                                                        </div>
                                                        <a class="remove" href="${URL}template/assets/#"><i class="fa fa-trash-o"></i></a>
                                                    </li>
                                                    <li class="clearfix">
                                                        <img src="${URL}template/assets/images/header-cart-image-02.jpg" alt="cart item" />
                                                        <div class="item-info">
                                                            <div class="name">
                                                                <a href="${URL}template/assets/#">The Great Gatsby</a>
                                                            </div>
                                                            <div class="author"><strong>Author:</strong> F. Scott Fitzgerald</div>
                                                            <div class="price">1 X $10.00</div>
                                                        </div>
                                                        <a class="remove" href="${URL}template/assets/#"><i class="fa fa-trash-o"></i></a>
                                                    </li>
                                                    <li class="clearfix">
                                                        <img src="${URL}template/assets/images/header-cart-image-03.jpg" alt="cart item" />
                                                        <div class="item-info">
                                                            <div class="name">
                                                                <a href="${URL}template/assets/#">The Great Gatsby</a>
                                                            </div>
                                                            <div class="author"><strong>Author:</strong> F. Scott Fitzgerald</div>
                                                            <div class="price">1 X $10.00</div>
                                                        </div>
                                                        <a class="remove" href="${URL}template/assets/#"><i class="fa fa-trash-o"></i></a>
                                                    </li>
                                                </ul>
                                                <div class="cart-total">
                                                    <div class="title">SubTotal</div>
                                                    <div class="price">$30.00</div>
                                                </div>
                                                <div class="cart-buttons">
                                                    <a href="${URL}template/assets/cart.html" class="btn btn-dark-gray">View Cart</a>
                                                    <a href="${URL}template/assets/checkout.html" class="btn btn-primary">Checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-collapse hidden-sm hidden-xs">
                            <ul class="nav navbar-nav">
                                <li class="dropdown active">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${pageContext.request.contextPath}">Home</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${URL}template/assets/books-media-list-view.html">Product</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${URL}template/assets/#">Pages</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${URL}template/assets/blog.html">Blog</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${URL}template/assets/blog.html">Blog Grid View</a></li>
                                        <li><a href="${URL}template/assets/blog-detail.html">Blog Detail</a></li>
                                    </ul>
                                </li>
                                <li><a href="${URL}template/assets/services.html">Services</a></li>
                                <li><a href="${URL}template/assets/contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="mobile-menu hidden-lg hidden-md">
                    <a href="${URL}template/assets/#mobile-menu"><i class="fa fa-navicon"></i></a>
                    <div id="mobile-menu">
                        <ul>
                            <li class="mobile-title">
                                <h4>Navigation</h4>
                                <a href="${URL}template/assets/#" class="close"></a>
                            </li>
                            <li>
                                <a href="${URL}template/assets/index-2.html">Home</a>
                                <ul>
                                    <li><a href="${URL}template/assets/index-2.html">Home V1</a></li>
                                    <li><a href="${URL}template/assets/home-v2.html">Home V2</a></li>
                                    <li><a href="${URL}template/assets/home-v3.html">Home V3</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="${URL}template/assets/books-media-list-view.html">Books &amp; Media</a>
                                <ul>
                                    <li><a href="${URL}template/assets/books-media-list-view.html">Books &amp; Media List View</a></li>
                                    <li><a href="${URL}template/assets/books-media-gird-view-v1.html">Books &amp; Media Grid View V1</a></li>
                                    <li><a href="${URL}template/assets/books-media-gird-view-v2.html">Books &amp; Media Grid View V2</a></li>
                                    <li><a href="${URL}template/assets/books-media-detail-v1.html">Books &amp; Media Detail V1</a></li>
                                    <li><a href="${URL}template/assets/books-media-detail-v2.html">Books &amp; Media Detail V2</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="${URL}template/assets/news-events-list-view.html">News &amp; Events</a>
                                <ul>
                                    <li><a href="${URL}template/assets/news-events-list-view.html">News &amp; Events List View</a></li>
                                    <li><a href="${URL}template/assets/news-events-detail.html">News &amp; Events Detail</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="${URL}template/assets/#">Pages</a>
                                <ul>
                                    <li><a href="${URL}template/assets/cart.html">Cart</a></li>
                                    <li><a href="${URL}template/assets/checkout.html">Checkout</a></li>
                                    <li><a href="${URL}template/assets/signin.html">Signin/Register</a></li>
                                    <li><a href="${URL}template/assets/404.html">404/Error</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="${URL}template/assets/blog.html">Blog</a>
                                <ul>
                                    <li><a href="${URL}template/assets/blog.html">Blog Grid View</a></li>
                                    <li><a href="${URL}template/assets/blog-detail.html">Blog Detail</a></li>
                                </ul>
                            </li>
                            <li><a href="${URL}template/assets/services.html">Services</a></li>
                            <li><a href="${URL}template/assets/contact.html">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
<!-- End: Header Section -->

<!-- Start: Slider Section -->
<div data-ride="carousel" class="carousel slide" id="home-v1-header-carousel">

    <!-- Carousel slides -->
    <div class="carousel-inner">
        <div class="item active">
            <figure>
                <img alt="Home Slide" src="${URL}template/assets/images/header-slider/home-v1/header-slide.jpg" />
            </figure>
            <div class="container">
                <div class="carousel-caption">
                    <h3>Online Learning Anytime, Anywhere!</h3>
                    <h2>Discover Your Roots</h2>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humor, or randomized words.</p>
                    <div class="slide-buttons hidden-sm hidden-xs">
                        <a href="${URL}template/assets/#" class="btn btn-primary">Read More</a>
                        <a href="${URL}template/assets/#" class="btn btn-default">Purchase</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <figure>
                <img alt="Home Slide" src="${URL}template/assets/images/header-slider/home-v1/header-slide.jpg" />
            </figure>
            <div class="container">
                <div class="carousel-caption">
                    <h3>Online Learning Anytime, Anywhere!</h3>
                    <h2>Discover Your Roots</h2>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humor, or randomized words.</p>
                    <div class="slide-buttons hidden-sm hidden-xs">
                        <a href="${URL}template/assets/#" class="btn btn-primary">Read More</a>
                        <a href="${URL}template/assets/#" class="btn btn-default">Purchase</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <figure>
                <img alt="Home Slide" src="${URL}template/assets/images/header-slider/home-v1/header-slide.jpg" />
            </figure>
            <div class="container">
                <div class="carousel-caption">
                    <h3>Online Learning Anytime, Anywhere!</h3>
                    <h2>Discover Your Roots</h2>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humor, or randomized words.</p>
                    <div class="slide-buttons hidden-sm hidden-xs">
                        <a href="${URL}template/assets/#" class="btn btn-primary">Read More</a>
                        <a href="${URL}template/assets/#" class="btn btn-default">Purchase</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="${URL}template/assets/#home-v1-header-carousel" data-slide="prev"></a>
    <a class="right carousel-control" href="${URL}template/assets/#home-v1-header-carousel" data-slide="next"></a>
</div>
<!-- End: Slider Section -->