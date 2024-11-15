<%@ include file="/commons/taglib.jsp"%>>
<c:url value="/" var="URL"></c:url>
<!DOCTYPE html>
<html lang="zxx">


<head>

    <!-- Meta -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">

    <!-- Title -->
    <title>..:: LIBRARIA ::..</title>

    <!-- Favicon -->
    <link href="${URL}template/assets/images/favicon.ico" rel="icon" type="image/x-icon" />

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
    <link href="${URL}template/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- Mobile Menu -->
    <link href="${URL}template/assets/css/mmenu.css" rel="stylesheet" type="text/css" />
    <link href="${URL}template/assets/css/mmenu.positioning.css" rel="stylesheet" type="text/css" />

    <!-- Stylesheet -->
    <link href="${URL}template/assets/style.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${URL}template/assets/js/html5shiv.min.js"></script>
    <script src="${URL}template/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<!-- Start: Header -->
<%@include file="/commons/admin/header.jsp"%>

<!-- End: Header -->

<!--Begin content-->
<sitemesh:write property ="body"/>
<!--End content-->

<!-- Start: Footer -->
<%@include file="/commons/admin/footer.jsp"%>
<!-- End: Footer -->

<!-- jQuery Latest Version 1.x -->
<script type="text/javascript" src="${URL}template/assets/js/jquery-1.12.4.min.js"></script>

<!-- jQuery UI -->
<script type="text/javascript" src="${URL}template/assets/js/jquery-ui.min.js"></script>

<!-- jQuery Easing -->
<script type="text/javascript" src="${URL}template/assets/js/jquery.easing.1.3.js"></script>

<!-- Bootstrap -->
<script type="text/javascript" src="${URL}template/assets/js/bootstrap.min.js"></script>

<!-- Mobile Menu -->
<script type="text/javascript" src="${URL}template/assets/js/mmenu.min.js"></script>

<!-- Harvey - State manager for media queries -->
<script type="text/javascript" src="${URL}template/assets/js/harvey.min.js"></script>

<!-- Waypoints - Load Elements on View -->
<script type="text/javascript" src="${URL}template/assets/js/waypoints.min.js"></script>

<!-- Facts Counter -->
<script type="text/javascript" src="${URL}template/assets/js/facts.counter.min.js"></script>

<!-- MixItUp - Category Filter -->
<script type="text/javascript" src="${URL}template/assets/js/mixitup.min.js"></script>

<!-- Owl Carousel -->
<script type="text/javascript" src="${URL}template/assets/js/owl.carousel.min.js"></script>

<!-- Accordion -->
<script type="text/javascript" src="${URL}template/assets/js/accordion.min.js"></script>

<!-- Responsive Tabs -->
<script type="text/javascript" src="${URL}template/assets/js/responsive.tabs.min.js"></script>

<!-- Responsive Table -->
<script type="text/javascript" src="${URL}template/assets/js/responsive.table.min.js"></script>

<!-- Masonry -->
<script type="text/javascript" src="${URL}template/assets/js/masonry.min.js"></script>

<!-- Carousel Swipe -->
<script type="text/javascript" src="${URL}template/assets/js/carousel.swipe.min.js"></script>

<!-- bxSlider -->
<script type="text/javascript" src="${URL}template/assets/js/bxslider.min.js"></script>

<!-- Custom Scripts -->
<script type="text/javascript" src="${URL}template/assets/js/main.js"></script>

</body>


</html>
