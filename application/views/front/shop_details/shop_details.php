<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>rawsqueezed || Drinks</title>
<meta name="keywords" content="HTML5,CSS3,HTML,Template,Multi-Purpose,M_Adnan,Corporate Theme,SEBIAN Multi Purpose Care,eCommerce,SEBIAN - Multi Purpose eCommerce HTML5 Template">
<meta name="description" content="SEBIAN - Multi Purpose eCommerce HTML5 Template">
<meta name="author" content="M_Adnan">

<!-- FONTS ONLINE -->
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<!--MAIN STYLE-->
<link href="../../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../../../css/main.css" rel="stylesheet" type="text/css">
<link href="../../../css/style.css" rel="stylesheet" type="text/css">
<link href="../../../css/responsive.css" rel="stylesheet" type="text/css">
<link href="../../../css/animate.css" rel="stylesheet" type="text/css">
<link href="../../../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- ADD YOUR OWN STYLING HERE. AVOID TO USE STYLE.CSS AND MAIN.CSS. IT WILL BE HELPFUL FOR YOU IN FUTURE UPDATES -->
<link href="../../../css/custom.css" rel="stylesheet" type="text/css">

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="../../../../rs-plugin/css/settings.css" media="screen" />

<!-- JavaScripts -->
<script src="../../../js/modernizr.js"></script>
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
        <div class="position-center-center"> <img src="../../../../images/preloader.gif">

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
    <div class="container">
      <div class="logo"> <a href="#."><img src="../../../images/logo-dark.png" alt=""></a> </div>
    </div>
    
    <!-- Nav -->
    <div class="sticky">
      <div class="container">
        <!-- Nav -->
        <nav class="webimenu"> 
          <!-- MENU BUTTON RESPONSIVE -->
          <div class="menu-toggle"> <i class="fa fa-bars"> </i> </div>
         <ul class="ownmenu">
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
  <!-- CONTENT START -->
  <div class="content"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
      <div class="container">
        <h4>ALL PRODUCTS</h4>
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">SHOP</li>
        </ol>
      </div>
    </section>
    
    <!--======= PAGES INNER =========-->
    <section class="section-p-30px pages-in">
      <div class="container">
        <div class="row"> 
          
          <!--======= SIDE BAR =========-->
          <div class="col-sm-3 animate fadeInLeft" data-wow-delay="0.2s">
            <div class="side-bar">
              <h4>Filter by</h4>
              
              <!-- HEADING -->
              <div class="heading">
                <h6>CATEGORIES</h6>
              </div>

              <!-- CATEGORIES -->
              <ul class="cate">
                <li><a href="<?php echo base_url(); ?>index.php/home/shop_det/clean" >CLEAN <span>(32)</span></a></li>
                <li><a href="#.">GLOW <span>(32)</span></a></li>
                <li><a href="#.">ENERGY <span>(32)</span></a></li>
                <li><a href="#.">HEAL YOUR GUT <span>(32)</span></a></li>
                
              </ul>
              
              <!-- HEADING -->
              
              
              <!-- HEADING -->
             
              
			    
              <!-- TAGS -->
              
              
              <!-- COMPAIR BOX -->
              
              <!-- ADS-->
              
            </div>
          </div>
          
          <!--======= ITEMS =========-->
          <div class="col-sm-9 animate fadeInUp" data-wow-delay="0.2s">
            <div class="items-short-type animate fadeInUp" data-wow-delay="0.4s"> 
              
              <!--======= GRID LIST STYLE =========-->
              <div class="grid-list"> <a href="#."><i class="fa fa-th-large"></i></a> </div>
              
              <!--======= SHORT BY =========-->
              <div class="short-by">
                <select class="selectpicker">
                  <option>Short by</option>
                  <option>Short by</option>
                </select>
                <p>Showing 1-12 of 30 products</p>
              </div>
              
              <!--======= VIEW ITEM NUMBER =========-->
              
            </div>
            
            <!--======= Products =========-->
            <div class="popurlar_product">
              <ul class="row">
                
                <!-- New Products -->
                <li class="col-sm-4 animate fadeIn" data-wow-delay="0.4s">
				<div class="items-in"> 
						<!-- Image --> 
						<img src="../../../images/new-item-3.jpg" alt="">
				
					<!-- Hover Details -->
					<div class="over-item">
						<ul class="animated fadeIn">
							<li> <a href="../../../images/new-item-1.jpg" data-lighter><i class="fa fa-eye"></i></a></li>
							<li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
							<li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
						</ul>
					</div>
                <!-- Item Name -->
					<div class="details-sec"> <a href="#.">GREEN APPLE</a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> 129.00</span> </div>
				</div>
                </li>
                
                <!-- New Products -->
                <li class="col-sm-4 animate fadeIn" data-wow-delay="0.4s">
				<div class="items-in"> 
						<!-- Image --> 
						<img src="../../../images/new-item-3.jpg" alt="">
				
					<!-- Hover Details -->
					<div class="over-item">
						<ul class="animated fadeIn">
							<li> <a href="../../../images/new-item-1.jpg" data-lighter><i class="fa fa-eye"></i></a></li>
							<li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
							<li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
						</ul>
					</div>
                <!-- Item Name -->
					<div class="details-sec"> <a href="#.">GREEN APPLE</a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> 129.00</span> </div>
				</div>
                </li>
                
                <!-- New Products -->
                <li class="col-sm-4 animate fadeIn" data-wow-delay="0.4s">
				<div class="items-in"> 
						<!-- Image --> 
						<img src="../../../images/new-item-3.jpg" alt="">
					<div class="new-tag"> out </div>
					<!-- Hover Details -->
					<div class="over-item">
						<ul class="animated fadeIn">
							<li> <a href="../../../images/new-item-1.jpg" data-lighter><i class="fa fa-eye"></i></a></li>
							<li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
							<li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
						</ul>
					</div>
                <!-- Item Name -->
					<div class="details-sec"> <a href="#.">GREEN APPLE</a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> 129.00</span> </div>
				</div>
                </li>
                
                <!-- New Products -->
                
            <!--======= PAGINATION =========-->
            <ul class="pagination animate fadeInUp" data-wow-delay="0.4s">
              <li><a href="#.">1</a></li>
              <li><a href="#.">2</a></li>
              <li><a href="#.">3</a></li>
              <li><a href="#.">4</a></li>
              <li><a href="#.">5</a></li>
              <li><a href="#."><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </section>
  </div>
  
  <!--======= Footer =========-->
  <footer>
    <div class="container">
      
      
      <!--  Footer Links -->
      <div class="footer-link row">
        <div class="col-md-6">
          <ul>
            
            <!--  INFOMATION -->
            <li class="col-sm-6">
			 <ul class="flicker">
			<div class="text-center"> <a href="#."><img src="../../../images/logoa.png" alt=""></a><br/></div>
			</ul>
            </li>
            
            <!-- MY ACCOUNT -->
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
            
            <!-- FLICKR PHOTO -->
            <li class="col-sm-6">
              <h5>INSTAGRAM PHOTOS</h5>
              <ul class="flicker">
                  <li><a href="#."><img src="../../../images/soon-avatar.png" alt=""></a></li>
                <li><a href="#."><img src="../../../images/soon-avatar.png" alt=""></a></li>
                <li><a href="#."><img src="../../../images/soon-avatar.png" alt=""></a></li>
                <li><a href="#."><img src="../../../images/soon-avatar.png" alt=""></a></li>
                <li><a href="#."><img src="../../../images/soon-avatar.png" alt=""></a></li>
                <li><a href="#."><img src="../../../images/soon-avatar.png" alt=""></a></li>

				
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
<!--  	<a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> -->
  <!-- GO TO TOP End -->
</div>
<!-- Wrap End --> 
<script src="../../../js/jquery-1.11.3.js"></script>
<script src="../../../js/wow.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<script src="../../../js/own-menu.js"></script>
<script src="../../../js/owl.carousel.min.js"></script>
<script src="../../../js/jquery.magnific-popup.min.js"></script>
<script src="../../../js/jquery.isotope.min.js"></script>
<script src="../../../js/jquery.flexslider-min.js"></script>


<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="../../../rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="../../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="../../../js/main.js"></script>
<script>
jQuery(document).ready(function($) {

  //  Price Filter ( noUiSlider Plugin)
    $("#price-range").noUiSlider({
    range: {
      'min': [ 0 ],
      'max': [ 1000 ]
    },
    start: [40, 940],
        connect:true,
        serialization:{
            lower: [
        $.Link({
          target: $("#price-min")
        })
      ],
      upper: [
        $.Link({
          target: $("#price-max")
        })
      ],
      format: {
      // Set formatting
        decimals: 2,
        prefix: '$'
      }
        }
  })
})

</script>
</body>
</html>