<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html lang="en-US">
<%@include file="../static/components/header.jsp"%>
		<!-- menu area start -->
		<div class="menubar">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-sm-6">
						<div class="logo">
							<a href="index.jsp"><img src="../static/img/logo.png" alt="logo"></a>
						</div>
					</div>
					<div class="col-md-10 col-sm-6">
						<div class="responsive-menu"></div>
					    <div class="mainmenu">
                            <ul id="primary-menu">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="about-us.jsp">About Us</a></li>
                                <li class="active"><a href="/products">Products</a></li>
                                <li><a href="#">Pages <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="faq.html">FAQ</a></li>
										<li><a href="gallery.html">Gallery</a></li>
										<li><a href="cart.jsp">Cart</a></li>
										<li><a href="checkout.html">Checkout</a></li>
									</ul>
								</li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                                <li>
                                    <button type="submit" class="toggle-pade">
                                        <i class="fa fa-search"></i>
                                    </button>
                                    <form class="navbar-form form-box" role="search">
                                        <input type="text" placeholder="Search">
                                    </form>
                                </li>
                            </ul>
					    </div>
					</div>
				</div>
			</div>
		</div><!-- menu area end -->
		<!-- hero area start -->
		<section class="theme2 hero-area ptb-80">
			<div class="container">
				<div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="hero-area-content">
                            <h1>A Place of All Organic Products</h1>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
                            <a href="#" class="krishok-btn">Shop Now <i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
				</div>
			</div>
		</section><!-- hero area end -->
		<!-- all product area start -->
		<section class="all-product ptb-80">
			<div class="container">

				<div class="row">
					<c:forEach items="${products}" var="product">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-product max-width-360">
							<div class="single-product-img">
								<div class="product-img">
									<img src="../static/img/tractor.jpg" alt="">
									<div class="product-img-overlay">
										<a href="#" class="krishok-btn">Add to cart <i class="fa fa-shopping-cart"></i></a>
									</div>
								</div>
							</div>
							<h1>PPPPPPPP</h1>
							<div class="product-details">
								<div class="product-info">
									<a href="product-details.html"><h4>${product.}</h4></a>
									<p>${product}</p>
                                    <span class="price">Price: <strong>$${product}</strong></span>
								</div>
								<div class="product-icon">
                                    <a href="#"><i class="fa fa-heart"></i></a>
                                    <a href="#"><i class="fa fa-share-alt"></i></a>
								</div>
							</div>
						</div>
                    </div>
					</c:forEach>

				</div>
				<div class="row">
				    <div class="col-md-12">
				        <ul class="pagination">
				            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
				            <li><a href="#">1</a></li>
				            <li class="active"><a href="#">2</a></li>
				            <li><a href="#">3</a></li>
				            <li><a href="#">4</a></li>
				            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
				        </ul>
				    </div>
				</div>
				<div class="row">
				    <div class="col-md-4">
				        <div class="product-tab">
				            <i class="fa fa-shopping-cart"></i>
				            <h4>Free Shipping</h4>
				        </div>
				    </div>
				    <div class="col-md-4">
				        <div class="product-tab product-tab-2">
				            <i class="fa fa-thermometer-quarter"></i>
				            <h4>Quality Product</h4>
				        </div>
				    </div>
				    <div class="col-md-4">
				        <div class="product-tab product-tab-3">
				            <i class="fa fa-thumbs-up"></i>
				            <h4>Money Back Guarantee</h4>
				        </div>
				    </div>
				</div>
				<div class="row">
                    <div class="col-lg-12">
                        <div class="sec-title pt-75">
                            <h2>New Products</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing eiusmod tempor incididunt ut labore et  consectetur adipisicing eiusmod dolore magna aliqua. </p>
                        </div>
                    </div>
				</div>
			</div>
		</section><!-- all product area end -->
		<!-- get quote area start -->

		<!-- footer area start -->
		<footer class="site-footer pt-75">
			<div class="container">
				<div class="row">
                    <div class="col-lg-5">
                        <div class="widget">
                            <h5 class="widget-title"><a href="#">About Us</a></h5>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of tand scrambled it to make a type specimen wonder full book. </p>
                            <div class="widget-icon">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="widget">
                            <h5 class="widget-title"><a href="#">Keep in touch</a></h5>
                            <ul>
                                <li>Address : 97 New Design Street, Dhaka BD</li>
                                <li>Phone : 1234 5678 9123  </li>
                                <li>Email : Stevan@Example.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="widget">
                            <h5 class="widget-title"><a href="#">Instagram Feed</a></h5>
                            <div class="img-gallery">
                                <div class="single-img-gallery">
                                    <a href="#"><img src="../static/img/widget/widget1.jpg" alt=""></a>
                                </div>
                                <div class="single-img-gallery">
                                    <a href="#"><img src="../static/img/widget/widget2.jpg" alt=""></a>
                                </div>
                                <div class="single-img-gallery">
                                    <a href="#"><img src="../static/img/widget/widget3.jpg" alt=""></a>
                                </div>
                                <div class="single-img-gallery">
                                    <a href="#"><img src="../static/img/widget/widget4.jpg" alt=""></a>
                                </div>
                                <div class="single-img-gallery">
                                    <a href="#"><img src="../static/img/widget/widget5.jpg" alt=""></a>
                                </div>
                                <div class="single-img-gallery">
                                    <a href="#"><img src="../static/img/widget/widget6.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
			<div class="footer-bottom-bg ptb-20">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="footer-bottom">
                                <p>Copyright © 2017 - All Right Reserved</p>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</footer><!-- footer area end -->
		<!-- jquery main JS -->

<%@include file="../static/components/footer.jsp"%>