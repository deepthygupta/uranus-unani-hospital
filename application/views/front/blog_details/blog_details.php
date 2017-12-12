<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Raw Squeezed || Blog detail</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

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
<link rel="stylesheet" type="text/css" href="../../../rs-plugin/css/settings.css" media="screen" />

<!-- JavaScripts -->
<script src="../../../js/modernizr.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
<!-- LOADER ===========================================-->


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
		  
            <li class="logo1"><a href="<?php echo base_url(); ?>index.php/home/home"><img src="../../../images/logo-hdr.png" alt="logo"></a></li>
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
  <!-- CONTENT START -->
  <div class="content"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner">
      <div class="container">
        <h4>BLOG</h4>
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
          <li><a href="<?php echo base_url(); ?>index.php/home/home">Home</a></li>
          <li class="active">BLOG</li>
        </ol>
      </div>
    </section>
    
    <!-- Blog -->
    <section class="section-p-30px blog-page">
      <div class="container">
        <div class="row"> 
          
          <!-- Left Side Bar -->
          <div class="col-sm-3 animate fadeInLeft" data-wow-delay="0.4s">
            <div class="side-bar"> 
              
              <!--  SEARCH -->

              
              <!-- HEADING -->

              
              <!-- CATEGORIES -->

              
              <!-- HEADING -->
              <div class="heading">
                <h4>Latest post</h4>
              </div>
              <!-- CATEGORIES -->
                <?php
                $this->db->limit(3);
                $this->db->order_by("blog_id", "desc");
                //$this->db->where("blog_category",$id);
                $blogs=$this->db->get('blog')->result_array();
                foreach($blogs as $row) {

                ?>
              <ul class="cate latest-post">
                
                <!-- Post Small -->
                <li>
                    <div class="media">
                        <div class="media-left"> <img src="<?php echo $this->crud_model->file_view('blog',$row['blog_id'],'','','thumb','src','',''); ?>" height="100" width="80" alt=""/></a></div>
                        <div class="media-body"> <a href="<?php echo base_url(); ?>index.php/home/blog_details/<?php echo $row['blog_id']; ?>"><?php echo substr($row['title'],0,50); echo "..."; ?></a>
                            <p><?php echo substr($row['summery'], 0, 50); echo "..."; ?></p>
                        </div>
                  </div>
                </li>
                <!-- Post Small -->

                <!-- Post Small -->

              </ul>
                <?php } ?>
              <!-- HEADING -->
              
              
              <!-- TAGS -->
              
              
            </div>
          </div>
          
          <!-- Right Bar -->
          <div class="col-sm-9 animate fadeInRight" data-wow-delay="0.4s"> 
            <!--  Blog Posts -->
              <?php
              $edit_data		=	$this->db->get_where('blog' , array('blog_id' => $blog_id) )->result_array();
              foreach($edit_data as $row):
              ?>
            <div class="blog-posts">
              <ul>
                <!--  Posts 1 -->
                <li class="animate fadeInUp" data-wow-delay="0.4s"> 
                  <!--  Image -->
                    <img class="img-responsive" src="<?php echo $this->crud_model->file_view('blog',$row['blog_id'],'','','thumb','src','',''); ?>" alt=""/>
                  
                  <!-- Tag Icon -->

                  <span class="tags"><?php
                      echo $this->db->get_where('blog_category',array('blog_category_id' => $row['blog_category']))->row()->name; ?></span> <a href="#." class="tittle-post"><?php echo $row['title']; ?></a>
                  <p> <?php echo $row['description']; ?> </p>
                  <!--  Post Info -->
                  <ul class="info">
                    <li><i class="fa fa-user"></i> <?php echo $row['author']?></li>
                    <li><i class="fa fa-calendar-o"></i><li> <?php echo $row['date']; ?></li>
                   
                    
                  </ul>
                </li>
                
                <!--  Posts 2 -->
                
                
                <!--  Posts 3 -->
                
                
                <!--  Posts 4 -->
                
              </ul>
            </div>
            <?php endforeach ?>
            <!--======= PAGINATION =========-->
            
          </div>
        </div>
      </div>
    </section>
  </div>
  
  <!--======= Footer =========-->
  <footer>
    <div class="container">
      <div class="text-center"> <a href="#."><img src="../../../images/logo.png" alt=""></a><br>
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
                  <li><a href="https://www.instagram.com/p/BTWZ14KDomT/?taken-by=rawsqueezed"><img src="../../../../images/instagram/inst1.jpg" alt=""></a></li>
                  <li><a href="https://www.instagram.com/p/BTiJf-sjcZ9/?taken-by=rawsqueezed"><img src="../../../../images/instagram/inst2.jpg" alt=""></a></li>
                  <li><a href="https://www.instagram.com/p/BTsnvCEDuLR/?taken-by=rawsqueezed"><img src="../../../../images/instagram/inst3.jpg" alt=""></a></li>
                  <li><a href="https://www.instagram.com/p/BUjYnaJj2wF/?taken-by=rawsqueezed"><img src="../../../../images/instagram/inst4.jpg" alt=""></a></li>
                  <li><a href="https://www.instagram.com/p/BUmAgFEjZXA/?taken-by=rawsqueezed"><img src="../../../../images/instagram/inst5.jpg" alt=""></a></li>
                  <li><a href="https://www.instagram.com/rawsqueezed/"><img src="../../../../images/instagram/inst6.jpg" alt=""></a></li>
				
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
</body>
</html>