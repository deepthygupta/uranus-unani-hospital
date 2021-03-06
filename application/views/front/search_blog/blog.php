<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Raw Squeezed || Blog</title>
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
        <div class="position-center-center"> <img src="../../images/preloader.gif">

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
                <div class="language black"><b>*Sunday Off</b></div>
                <div class="top-links">
                    <ul>
                        <li><a href="#.">LOGIN</a></li>
                        <li><a href="#.">REGISTER</a></li>
                        <li><a href="pay-viewcart.html">MY CART</a></li>
                        <!--
                          <li><a href="#.">MY ACCOUNT</a></li>
                          <li><a href="#.">MY WISHLIST</a></li>
                        -->


                    </ul>
                    <!-- Social Icons -->
                    <ul class="social_icons">
                        <li class="facebook"><a href="#."><i class="fa fa-facebook"></i> </a></li>
                        <li class="twitter"><a href="#."><i class="fa fa-twitter"></i> </a></li>
                        <li class="dribbble"><a href="#."><i class="fa fa-dribbble"></i> </a></li>
                        <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i> </a></li>
                        <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i> </a></li>
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
                            <a href="#">
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
                        <li class="shop-cart" ><a href="#."><i class="fa fa-shopping-cart"></i></a> <span class="numb">2</span>
                            <ul class="dropdown">
                                <li>
                                    <div class="media">
                                        <div class="col-sm-6">
                                            <div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="../../../images/item-col-img-1.jpg" alt="..."> </a> </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <h6 class="media-heading">DRAEY TRENCH COAT</h6>
                                            <span class="price"><i class="fa fa-inr" aria-hidden="true"></i> 129.00</span> <span class="qty">QTY: 01</span> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <div class="col-sm-6">
                                            <div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="../../../images/item-col-img-1.jpg" alt="..."> </a> </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <h6 class="media-heading">DRAEY TRENCH COAT</h6>
                                            <span class="price"><i class="fa fa-inr" aria-hidden="true"></i> 129.00</span> <span class="qty">QTY: 01</span> </div>
                                    </div>
                                </li>

                            </ul>
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
  
  <!-- CONTENT START -->
  <div class="content"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner">
      <div class="container">
        <h4>BLOG & NEWS</h4>
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
          <li><a href=<?php echo base_url(); ?>index.php/home/home>Home</a></li>
          <li class="active">BLOG & NEWS</li>
        </ol>
      </div>
    </section>
    
    <!-- Blog -->
    <section class="section-p-30px blog-page">
      <div class="container">
        <div class="row"> 
          
          <!-- Right Side Bar -->
          <div class="col-sm-3 animate fadeInLeft" data-wow-delay="0.4s">
            <div class="side-bar"> 
              
              <!--  SEARCH -->
              <div class="search">
                <form>
                  <input type="text" placeholder="SEARCH..">
                  <button type="submit"> <i class="fa fa-search"></i></button>
                </form>
              </div>
              
              <!-- HEADING -->
              <div class="heading">
                <h4>Categories</h4>
              </div>
              
              <!-- CATEGORIES -->
              <ul class="cate">
                <li><a href="?id=5">BLOGS</a></li>
                <li><a href="?id=4">NEWS</a></li>
                
              </ul>
              
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

                <!-- Post Small -->

                <!-- Post Small -->
                <li>
                  <div class="media">
                    <div class="media-left"> <img src="<?php echo $this->crud_model->file_view('blog',$row['blog_id'],'','','thumb','src','',''); ?>" height="100" width="80" alt=""/></a></div>
                    <div class="media-body"> <a href="#."><?php echo substr($row['title'],0,50); echo "..."; ?></a>
                      <p><?php echo substr($row['summery'], 0, 50); echo "..."; ?></p>
                    </div>
                  </div>
                </li>
              </ul>
              <?php } ?>
              <!-- HEADING -->
              
              <!-- CATEGORIES -->


              <!-- TAGS -->
              
              
            </div>
          </div>
          
          <!-- Blog Bar -->

          <div class="col-sm-9 animate fadeInRight" data-wow-delay="0.4s"> 
            <!--  Blog Posts -->
              <?php
              if (isset($_GET["id"])) {
              $id=$_GET['id'];
              $this->db->limit(5);
              $this->db->order_by("blog_id", "desc");
              $this->db->where("blog_category", $id);
              $blogs=$this->db->get('blog')->result_array();
              foreach($blogs as $row){
              ?>
            <div class="blog-posts medium-images">
              <ul>
                <!--  Posts 1 -->
                <li class="animate fadeInUp" data-wow-delay="0.4s">
                  <div class="row"> 
                    <!--  Image -->
                    <div class="col-sm-5"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('blog',$row['blog_id'],'','','thumb','src','',''); ?>" alt=""/>
                    </div>
                    
                    <!--  Post Details -->
                    <div class="col-sm-7"> <span class="tags "><?php
                            echo $this->db->get_where('blog_category',array('blog_category_id' => $row['blog_category']))->row()->name; ?>
                            </span> <a href="#." class="tittle-post"><?php echo $row['title']?></a>
                      <p><?php echo substr($row['summery'], 0, 500); ?></p>
                      <!--  Post Info -->
                      <ul class="info">
                        <li><i class="fa fa-user"></i> <?php echo $row['author']?></li>
                        <li><i class="fa fa-calendar-o"></i><?php echo date('d M Y',$row['date'] )?></li>
                        
                      </ul>
                      <a class="btn btn-small btn-dark" href="<?php echo base_url(); ?>index.php/home/blog_details/<?php echo $row['blog_id']; ?>">READ MORE</a>
                      <!-- Tag Icon -->
                     
                    </div>
                  </div>
                </li>
                
                <!--  Posts 2 -->

                
                <!--  Posts 3 -->
                
                
                <!--  Posts 4 -->
               
                
                <!--  Posts 5 -->
                
              </ul>
            </div>
            <?php } } else { ?>

              <?php

              $this->db->limit(5);
              $this->db->order_by("blog_id", "desc");
              //$this->db->where("blog_category",$id);
              $blogs=$this->db->get('blog')->result_array();
              foreach($blogs as $row){
              ?>
              <div class="blog-posts medium-images">
                  <ul>
                      <!--  Posts 1 -->
                      <li class="animate fadeInUp" data-wow-delay="0.4s">
                          <div class="row">
                              <!--  Image -->
                              <div class="col-sm-5"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('blog',$row['blog_id'],'','','thumb','src','',''); ?>" alt=""/>
                              </div>

                              <!--  Post Details -->
                              <div class="col-sm-7"> <span class="tags"><?php
                                      echo $this->db->get_where('blog_category',array('blog_category_id' => $row['blog_category']))->row()->name; ?>
                            </span> <a href="#." class="tittle-post"><?php echo $row['title']?>   </a>
                                  <p><?php echo substr($row['summery'], 0, 500); ?></p>
                                  <!--  Post Info -->
                                  <ul class="info">
                                      <li><i class="fa fa-user"></i> <?php echo $row['author']?></li>
                                      <li><i class="fa fa-calendar-o"></i><?php echo date('d M Y',$row['date'] )?></li>

                                  </ul>
                                  <a class="btn btn-small btn-dark" href="<?php echo base_url(); ?>index.php/home/blog_details/<?php echo $row['blog_id']; ?>">READ MORE</a>
                                  <!-- Tag Icon -->

                              </div>
                          </div>
                      </li>

                      <!--  Posts 2 -->


                      <!--  Posts 3 -->


                      <!--  Posts 4 -->


                      <!--  Posts 5 -->

                  </ul>
              </div>
              <?php }  } ?>

            <!--======= PAGINATION =========-->
           <!-- <ul class="pagination animate fadeInUp" data-wow-delay="0.4s">
              <li><a href="#.">1</a></li>
              <li><a href="#.">2</a></li>
              <li><a href="#.">3</a></li>
              <li><a href="#.">4</a></li>
              <li><a href="#.">5</a></li>
              <li><a href="#."><i class="fa fa-angle-right"></i></a></li>
            </ul> -->
          </div>
        </div>
      </div>
    </section>
  </div>
  
  <!--======= Footer =========-->
  <footer>
    <div class="container">
      <div class="text-center"> <a href="#."><img src="../../images/logo.png" alt=""></a><br>
        <p class="intro-small margin-t-40">Multipurpose E-Commerce Theme is suitable for furniture store, fashion shop, accessories, electric shop. We have included multiple layouts for home page to give you best selections in customization.</p>
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
                <li><a href="07-faqs-page.html"> FAQ</a></li>
                <li><a href="privacy.html."> PRIVACY & POLICY</a></li>
                <li><a href="terms.html"> TERMS & CONDITIONS</a></li>
               
              </ul>
            </li>
            
            <!-- MY ACCOUNT -->
            <li class="col-sm-6">
              <h5>MY ACCOUNT</h5>
              <ul class="f-links">
                <li><a href="#.">MY ACCOUNT</a></li>
                <li><a href="#."> LOGIN</a></li>
                <li><a href="#."> MY CART</a></li>
                <li><a href="#."> WISHLIST</a></li>
                <li><a href="#."> CHECKOUT</a></li>
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
              
			  <p><i class="fa fa-home" aria-hidden="true"></i> Sraddha speciality products, Janatha road south end, Manamel temple complex Vyttila – 682019</p>
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
       <p>© 2017 Squeezed. All Rights Reserved. Powered By <a href="http://qproinnovations.com/"target="blank">QPro Innovations</a></p>
      </div>
    </div>
  </footer>  
  <!-- GO TO TOP --> 
  	<a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> 
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
</body>
</html>