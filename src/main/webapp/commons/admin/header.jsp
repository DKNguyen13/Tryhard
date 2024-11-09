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
                                    <a href="#">
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
                                        <c:choose>
                                            <c:when test="${not empty funa}">
                                                <!-- Nếu fullname không rỗng -->
                                                <span>Hello, <c:out value="${funa}" /></span>
                                                <span>|</span>
                                                <a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> Logout</a>
                                            </c:when>
                                            <c:otherwise>
                                                <!-- Nếu fullname rỗng, hiển thị Login / Register -->
                                                <a href="${pageContext.request.contextPath}/views/login.jsp"><i class="fa fa-lock"></i> Login / Register</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-collapse hidden-sm hidden-xs">
                            <ul class="nav navbar-nav">
                                <li class="dropdown active">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${pageContext.request.contextPath}/views/admin/home.jsp">Home</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${pageContext.request.contextPath}/admin/books">Product</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle disabled" href="${URL}template/assets/#">Pages</a>
                                </li>
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

<!-- Start: Page Banner -->
<section class="page-banner services-banner">
    <div class="container">
        <div class="banner-header">
            <h2>Books & Media Listing</h2>
            <span class="underline center"></span>
            <p class="lead">Proin ac eros pellentesque dolor pharetra tempo.</p>
        </div>
        <div class="breadcrumb">
            <ul>
                <li><a href="#">Home</a></li>
                <li>Books & Media</li>
            </ul>
        </div>
    </div>
</section>
<!-- End: Page Banner -->