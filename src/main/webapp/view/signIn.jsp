<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="apple-touch-icon" sizes="57x57" href="../static/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="../static/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="../static/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="../static/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="../static/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="../static/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="../static/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="../static/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="../static/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192"  href="../static/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="../static/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="../static/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="../static/favicon/favicon-16x16.png">
  <link rel="manifest" href="../static/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="../static/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <title>Krishok | Contact Us</title>
  <!-- Font Awesome CSS -->
  <link rel="stylesheet" type="text/css" href="../static/css/font-awesome.min.css" media="all" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.min.css" media="all" />
  <!-- slicknav CSS -->
  <link rel="stylesheet" href="../static/css/slicknav.min.css">
  <!-- Owl carousel CSS -->
  <link rel="stylesheet" href="../static/css/owl.carousel.min.css">
  <!-- Lightbox CSS -->
  <link rel="stylesheet" href="../static/css/lightbox.min.css"/>
  <!-- Animate CSS -->
  <link rel="stylesheet" href="../static/css/animate.min.css">
  <!-- Main style CSS -->
  <link rel="stylesheet" type="text/css" href="../static/css/style.css" media="all" />
  <!-- Responsive CSS -->
  <link rel="stylesheet" type="text/css" href="../static/css/responsive.css" media="all" />
</head>
<body>
<!-- Page loader -->
<div id="preloader"></div>
<!-- header area start -->
<header class="header-area ptb-15">
  <div class="container">
    <div class="row">
      <div class="col-md-7">
        <div class="header-left-content">
          <ul>
            <li><a href="#"><i class="fa fa-phone"></i>0123 4567 8913</a></li>
            <li><a href="#"><i class="fa fa-envelope"></i>example@gmail.com</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-5">
        <div class="">
          <ul class="d-flex justify-content-end">
            <li><a href="/user/signup" class="popup-show">Sign Up</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</header><!-- header area end -->
<!-- menu area start -->

<!-- contact area start -->
<section class="ptb-80 d-flex justify-content-center" id="email-us">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="contact-form">
          <c:if test = "${error != null}">
            <div class="alert alert-danger" role="alert">
              ${error}
            </div>
          </c:if>

          <h4>Sign In</h4>
          <form action="/user/login" method="post">
            <label>Email</label>
            <input name="email" type="email" placeholder="Your Email">
            <label>Password</label>
            <input name="password" type="password" placeholder="Password">
            <button type="submit" class="krishok-btn">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section><!-- contact gallery area end -->
<!-- contact map area start -->


<!-- jquery main JS -->
<script src="../static/js/jquery.min.js"></script>
<!-- Poppers JS -->
<script src="../static/js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="../static/js/bootstrap.min.js"></script>
<!-- slicknav JS -->
<script src="../static/js/jquery.slicknav.min.js"></script>
<!-- owl carousel JS -->
<script src="../static/js/owl.carousel.min.js"></script>
<!-- Isotope JS -->
<script src="../static/js/isotope-3.0.4.min.js"></script>
<!-- Bx slider JS -->
<script src="../static/js/jquery.bxslider.min.js"></script>
<!-- lightbox JS -->
<script src="../static/js/lightbox.min.js"></script>
<!-- Wow JS -->
<script src="../static/js/wow-1.3.0.min.js"></script>
<!-- Gmap JS -->
<script src="../static/js/gmap3.min.js"></script>
<!-- Google map api -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCXNQbOV3ZGoxAQ_H2FtRAS_i9yOdZFfBo&region=GB"></script>
<!-- Imagezoom JS -->
<script src="../static/js/jquery.imagezoom.js"></script>
<!-- main JS -->
<script src="../static/js/main.js"></script>
</body>
</html>