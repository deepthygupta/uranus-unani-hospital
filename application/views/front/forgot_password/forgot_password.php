<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Raw Squeezed || Recovery Password</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- FONTS ONLINE -->
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<!--MAIN STYLE-->
<link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../../css/main.css" rel="stylesheet" type="text/css">
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<link href="../../css/responsive.css" rel="stylesheet" type="text/css">
<link href="../../css/animate.css" rel="stylesheet" type="text/css">
<link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- ADD YOUR OWN STYLING HERE. AVOID TO USE STYLE.CSS AND MAIN.CSS. IT WILL BE HELPFUL FOR YOU IN FUTURE UPDATES -->
<link href="../../css/custom.css" rel="stylesheet" type="text/css">

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="../../rs-plugin/css/settings.css" media="screen" />

<!-- JavaScripts -->
<script src="../../js/modernizr.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="../../images/favicon.ico">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
<!-- LOADER ===========================================-->

<div id="loader">
    <div class="loader">
        <div class="position-center-center"> <img src="../../images/preloader.gif" alt="">
        </div>
    </div>
</div>
<!-- Page Wrap -->
<div id="wrap">
  
  <!-- Header -->
  <header class="header-style-2"> 
    <!-- Top Bar -->
    <div class="top-bar">
      <div class="container"> 
        <!-- Language -->
          <div class="language">  <a href="#.">We deliver across Kochi city</a></div>
        <div class="top-links">
          <ul>
              <?php if ($this->session->userdata('user_login') != 'yes'){ ?>
                  <li><a href="<?php echo base_url(); ?>index.php/home/login2">LOGIN</a></li>
                  <li><a href="<?php echo base_url(); ?>index.php/home/login2">REGISTER</a></li>
                  <li><a href="<?php echo base_url(); ?>index.php/home/cart_checkout">MY CART</a></li>
              <?php } else { ?>
                  <li><a href="<?php echo base_url(); ?>index.php/home/my_account">MY ACCOUNT</a></li>
                  <li><a href="<?php echo base_url(); ?>index.php/home/logout2">LOGOUT</a></li>
                  <li><a href="<?php echo base_url(); ?>index.php/home/cart_checkout">MY CART</a></li>
              <?php } ?>
		  <!-- 
            <li><a href="#.">MY ACCOUNT</a></li>
            <li><a href="#.">MY WISHLIST</a></li>
          -->
		  
		  
          </ul>
          <!-- Social Icons -->
            <ul class="social_icons">
                <li class="facebook"><a href="https://www.facebook.com/rawsqueezed"><i class="fa fa-facebook"></i> </a></li>
                <li class="instagram"><a href=" https://www.instagram.com/rawsqueezed/"><i class="fa fa-instagram"></i> </a></li>

            </ul>
        </div>
      </div>
    </div>
    
    <!-- Logo -->
    
    
    <!-- Nav -->
    <div class="sticky">
      <div class="container">
        <!-- Nav -->
        <nav class="webimenu"> 
          <!-- MENU BUTTON RESPONSIVE -->
          <div class="menu-toggle"> <i class="fa fa-bars"> </i> </div>
          <ul class="ownmenu">
		  
            <li class="logo1"><a href="index.html"><img src="../../images/logo-hdr.png" alt="logo"></a></li>
              <li>
                  <a href="<?php echo base_url(); ?>index.php/home/home">
                      <?php echo translate('HOME');?>
                  </a>
              </li>

              <li>
                  <a href="<?php echo base_url(); ?>index.php/home/about_us">
                      <?php echo translate('ABOUT US');?>
                  </a>
              </li>
              <li >
                  <a href="<?php echo base_url(); ?>index.php/home/shop">
                      <?php echo translate('DRINKS');?>
                  </a>
              </li>
              <li >
                  <a href="<?php echo base_url(); ?>index.php/home/faq1">
                      <?php echo translate('FAQ');?>
                  </a>
              </li>

              <li >
                  <a href="<?php echo base_url(); ?>index.php/home/blog">
                      <?php echo translate('BLOG & NEWS');?>
                  </a>
              </li>
              <!--======= MEGA MENU =========-->

              </li>
              <li >
                  <a href="<?php echo base_url(); ?>index.php/home/contact1">
                      <?php echo translate('CONTACT');?>
                  </a>
              </li>
            
            <!--======= Shopping Cart =========-->
              <li class="shop-cart" ><a href="<?php echo base_url(); ?>index.php/home/cart_checkout"><i class="fa fa-shopping-cart"></i></a> <span class="numb"><?php echo count($this->cart->contents()); ?></span>

              </li>
            <!--======= SEARCH ICON =========-->
            <li class="search-nav"><a href="#."><i class="fa fa-search"></i></a>
              <ul class="dropdown">
                <li class="row">
                  <div class="col-sm-4 no-padding">
                    <select class="selectpicker">
                      <option>CLEAN</option>
                      <option>GLOW</option>
                      <option>ENERGY</option>
                      <option>HEAL YOUR GUT</option>
                      
                    </select>
                  </div>
                  <div class="col-sm-8 no-padding">
                    <input type="search" class="form-control" placeholder="Search Here">
                    <button type="submit"> <i class="fa fa-search"></i> </button>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </header>
  <!-- Header End -->
    <div class="ertyuiop"
         messenger_app_id="<?php echo $this->crud_model->fb_get_appid(); ?>"
         page_id="<?php echo $this->crud_model->fb_get_pageid(); ?>"
         color="blue"
         style="position: fixed; bottom: -10px; z-index: 10000; right: -4px;"
         size="large">
        <a target="_blank" href="https://m.me/<?php echo $this->crud_model->fb_get_pageid(); ?>" >  <img src="<?php echo base_url()?>images/fb.png"> </a>
    </div>
  <!--======= SUB BANNER =========-->
  <section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
      <h4>FORGOT YOUR PASSWORD?</h4>
      <!-- Breadcrumb -->
      <hr>
    </div>
  </section>
  
  <!-- CONTENT START -->
  <div class="content "> 
    
    <!--======= Contact Us =========-->
    <section class="conact-us conact-us-2 conact-us-3 no-padding-b"> 
      <!--======= CONTACT FORM =========-->
    <div class="container"> 
    <div class="row"> 
        <div class="col-sm-12 contact-3 animate fadeInRight" data-wow-delay="0.5s"> 
          <!-- TITTLE -->
		   <h5>Recover your password</h5>
            <p>Please enter your email address below. You will receive a link to reset your password. </p>
			<div class="contact"> 
			<div class="contact-form"> 
              <!--======= FORM  =========-->
                <?php
                echo form_open(base_url() . 'index.php/home/recover_password', array(
                    'class' => 'contact-form',
                    'method' => 'post',
                    'id' => 'contact_form',
                    'role' => 'form',

                    'enctype' => 'multipart/form-data'
                ));
                ?>
                <div class="row">
                  <div class="col-md-12">
                    <ul class="row">
                      <li class="col-sm-12">
                        <label>
                          <input type="email" class="form-control" name="email" id="name" placeholder="*EMAIL ADDRESS" required>
                        </label>
                      </li>


                        <li class="col-sm-6 no-margin"><span class="btn btn-dark recovery_btn">Recover
                                                    </span>
                        </li>
					  

                     
                    </ul>
                  </div>
                  
                </div>
              </form>
            </div>
            </div>
			
          
        </div>
		<!-- Contact Form -->
        
        
		
		
	</div>
	</div>
	
	
        
      
    </section>
  </div>
  
  <!--======= Footer =========-->
    <footer>
        <div class="container">
            <div class="text-center"> <a href="#."><img src="../../images/logo.png" alt=""></a><br>
                <p class="intro-small margin-t-40">Are you looking for healthy fruit juices that are filled with the wholesome goodness of fresh fruits? Choose from a wide range of fruit juices at Rawsqueezed. Quench your thirst with the most nutritious and refreshing juices.</p>
            </div>

            <!--  Footer Links -->
            <div class="footer-link row">
                <div class="col-md-6">
                    <ul>

                        <!--  INFOMATION -->
                        <li class="col-sm-6">
                            <h5>INFORMATION</h5>
                            <ul class="f-links">
                                <li><a href="<?php echo base_url(); ?>index.php/home/home"> HOME</a></li>
                                <li><a href="<?php echo base_url(); ?>index.php/home/about_us"> ABOUT US</a></li>
                                <li><a href="<?php echo base_url(); ?>index.php/home/faq1"> FAQ</a></li>
                                <li><a href="#."> PRIVACY & POLICY</a></li>
                                <li><a href="#"> TERMS & CONDITIONS</a></li>

                            </ul>
                        </li>

                        <!-- MY ACCOUNT -->
                        <li class="col-sm-6">
                            <h5>MY ACCOUNT</h5>
                            <ul class="f-links">
                                <li><a href="#.">MY ACCOUNT</a></li>
                                <li><a href="#."> LOGIN</a></li>
                                <li><a href="<?php echo base_url(); ?>index.php/home/cart_checkout"> MY CART</a></li>
                                <!--                                <li><a href="#."> WISHLIST</a></li>-->
                                <!--                                <li><a href="#."> CHECKOUT</a></li>-->
                            </ul>
                        </li>
                    </ul>
                </div>

                <!-- Second Row -->
                <div class="col-md-6">
                    <ul class="row">

                        <!-- TWITTER -->
                        <li class="col-sm-6">
                            <h5>CONTACT US</h5>

                            <p><i class="fa fa-home" aria-hidden="true"></i> Sraddha speciality products, Thykoodam, Vyttila – 682019</p>
                            <p><i class="fa fa-envelope" aria-hidden="true"></i> sales@rawsqueezed.com</p>
                            <p><i class="fa fa-phone" aria-hidden="true"></i> +91 7510 150 150</p>
                        </li>

                        <!-- FLICKR PHOTO -->
                        <li class="col-sm-6">
                            <h5>INSTAGRAM PHOTOS</h5>
                            <ul class="flicker">
                                <li><a href="https://www.instagram.com/p/BTWZ14KDomT/?taken-by=rawsqueezed"><img src="../../images/instagram/inst1.jpg" alt=""></a></li>
                                <li><a href="https://www.instagram.com/p/BTiJf-sjcZ9/?taken-by=rawsqueezed"><img src="../../images/instagram/inst2.jpg" alt=""></a></li>
                                <li><a href="https://www.instagram.com/p/BTsnvCEDuLR/?taken-by=rawsqueezed"><img src="../../images/instagram/inst3.jpg" alt=""></a></li>
                                <li><a href="https://www.instagram.com/p/BUjYnaJj2wF/?taken-by=rawsqueezed"><img src="../../images/instagram/inst4.jpg" alt=""></a></li>
                                <li><a href="https://www.instagram.com/p/BUmAgFEjZXA/?taken-by=rawsqueezed"><img src="../../images/instagram/inst5.jpg" alt=""></a></li>
                                <li><a href="https://www.instagram.com/rawsqueezed/"><img src="../../images/instagram/inst6.jpg" alt=""></a></li>

                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Rights -->
            <div class="rights">
                <p>© 2017 Squeezed. All Rights Reserved. Powered By <a href="https://www.FB.com/designershubs"target="blank">D.HUB</a></p>
            </div>
        </div>
    </footer>
  <!-- GO TO TOP --> 

  <!-- GO TO TOP End -->
</div>
<!-- Wrap End --> 
<script src="../../js/jquery-1.11.3.js"></script>
<script src="../../js/wow.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/own-menu.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<script src="../../js/jquery.magnific-popup.min.js"></script>
<script src="../../js/jquery.isotope.min.js"></script>
<script src="../../js/jquery.flexslider-min.js"></script>
 

<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="../../js/main.js"></script>
<!-- begin map script--> 
<script type='text/javascript' src='http://maps.google.com/maps/api/js?sensor=false'></script> 
<script type="text/javascript">
/*==========  Map  ==========*/
var map;
function initialize_map() {
if ($('#map').length) {
	var myLatLng = new google.maps.LatLng(-37.814199, 144.961560);
	var mapOptions = {
		zoom: 17,
		center: myLatLng,
		scrollwheel: false,
		panControl: false,
		zoomControl: true,
		scaleControl: false,
		mapTypeControl: false,
		streetViewControl: false
	};
	map = new google.maps.Map(document.getElementById('map'), mapOptions);
	var marker = new google.maps.Marker({
		position: myLatLng,
		map: map,
		tittle: 'Envato',
		icon: './images/map-locator-1.png'
	});
} else {
	return false;
}
}
google.maps.event.addDomListener(window, 'load', initialize_map);
</script>
</body>
</html>