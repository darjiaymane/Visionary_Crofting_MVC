<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Krishok | Cart</title>
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
                <div class="header-right-content">
                    <ul>
                        <li>
                            <select>
                                <option value="En">En</option>
                                <option value="Bd">Bd</option>
                            </select>
                        </li>
                        <li><a href="#" class="krishok-cart"><i class="fa fa-shopping-cart"></i> <span>3</span></a></li>
                        <li><a href="#" class="popup-show">Login</a>
                            <div class="login-popup login-form contact-form">
                                <c:if test = "${error1 != null}">
                                    <div class="alert alert-danger" role="alert">
                                            ${error1}
                                    </div>
                                </c:if>
                                <h4>Login</h4>
                                <form action="user/login" method="post">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="contact-container">
                                                <input type="email" name="email" placeholder="Email Address">
                                                <i class="fa fa-envelope"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mb-15">
                                            <div class="contact-container">
                                                <input type="password" name="password" placeholder="Password">
                                                <i class="fa fa-eye"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 text-left mb-15">
                                            <input type="checkbox">
                                            <p>Remember me</p>
                                        </div>
                                        <div class="col-sm-6 text-right mb-15">
                                            <div class="popup-light">
                                                <p>Forget Password ?</p>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mb-30">
                                            <button type="submit" class="krishok-btn">LOGIN</button>
                                        </div>
                                        <div class="col-sm-12 mb-15">
                                            <div class="sign-with">
                                                <p>Or Sign In With</p>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <a href="#" class="login-with"><i class="fa fa-facebook"></i></a>
                                            <a href="#" class="login-with"><i class="fa fa-twitter"></i></a>
                                        </div>
                                        <div class="col-sm-12 mt-30">
                                            <p>Don’t Have an Account ? <a href="#" class="registration-form-show">Create Now</a></p>
                                        </div>
                                    </div>
                                </form>
                                <div class="popup-close"><i class="fa fa-close"></i></div>
                            </div>
                            <div class="login-popup registration-form contact-form">
                                <h4>Create Account</h4>
                                <form action="user/signup" method="post">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="contact-container">
                                                <input name="userName" type="text" placeholder="Username">
                                                <i class="fa fa-user"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="contact-container">
                                                <input name="email" type="email" placeholder="Email Address">
                                                <i class="fa fa-envelope"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="contact-container">
                                                <input name="password" type="password" placeholder="Password">
                                                <i class="fa fa-eye"></i>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mb-15">
                                            <input name="telephone" type="password" placeholder="Phone Number">
                                        </div>
                                        <div class="col-sm-12 text-left mb-15">
                                            <input type="checkbox">
                                            <p>Agree with <span>terms and condition</span></p>
                                        </div>
                                        <div class="col-sm-12 mb-20">
                                            <button type="submit" class="krishok-btn">Create Account</button>
                                        </div>
                                        <div class="col-sm-12">
                                            <p>Already Have an Account ?  <a href="#" class="login-form-show">Login Now</a></p>
                                        </div>
                                    </div>
                                </form>
                                <div class="popup-close"><i class="fa fa-close"></i></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header><!-- header area end -->

