<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>rawsqueezed || Product detail</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- FONTS ONLINE -->
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<!--MAIN STYLE-->
<link href="../../../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../../../../css/main.css" rel="stylesheet" type="text/css">
<link href="../../../../css/style.css" rel="stylesheet" type="text/css">
<link href="../../../../css/responsive.css" rel="stylesheet" type="text/css">
<link href="../../../../css/animate.css" rel="stylesheet" type="text/css">
<link href="../../../../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- ADD YOUR OWN STYLING HERE. AVOID TO USE STYLE.CSS AND MAIN.CSS. IT WILL BE HELPFUL FOR YOU IN FUTURE UPDATES -->
<link href="../../css/custom.css" rel="stylesheet" type="text/css">

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="../../../../rs-plugin/css/settings.css" media="screen" />

<!-- JavaScripts -->
<script src="../../../../js/modernizr.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="http://notifyjs.com/dist/notify-combined.min.js"></script>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
<!-- LOADER ===========================================-->
<div id="loader">
    <div class="loader">
        <div class="position-center-center"> <img src="../../../../images/preloader.gif" alt="">
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

                        <li class="logo1"><a href="<?php echo base_url(); ?>index.php/home/home"><img src="../../../../images/logo-hdr.png" alt="logo"></a></li>
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
  <?php 
$edit_data		=	$this->db->get_where('product' , array('product_id' => $product_id) )->result_array();
 foreach($edit_data as $row):
?>

  
  <div class="content"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
      <div class="container">
        <h4><?php echo $row['title']; ?></h4>
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
          <li><a href="<?php echo base_url(); ?>index.php/home/home">Home</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/home/shop">SHOP</a></li>
          <li class="active"><?php echo $row['title']; ?></li>
        </ol>
      </div>
    </section>
    
    <!--======= PAGES INNER =========-->
    <section class="section-p-30px pages-in item-detail-page" style="margin:auto;text-align:center;">
      <div class="container">
        <div class="row"> 
          
          <!--======= IMAGES SLIDER =========-->
          <div class="col-sm-6 large-detail animate fadeInLeft" data-wow-delay="0.4s">
            <div class="images-slider">
              <ul class="slides">
                <li data-thumb="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>"  alt=""> </li>
                <li data-thumb="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>"  alt=""> </li> 
              </ul>
            </div>
          </div>
          
          <!--======= ITEM DETAILS =========-->
          <div class="col-sm-6 animate fadeInRight" data-wow-delay="0.4s">
            <div class="row">
              <div class="col-sm-12">
                <h4><?php echo $row['title']; ?></h4><br/>
                
				<div class="col-sm-12"> 
				<span class="price"><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['sale_price']; ?> 
					
					
<!--					--><?php //if($row['current_stock'] == 0 || $row['current_stock'] == NULL) { ?>
<!--						<span class="out-stoke red"> <i class="fa fa-times-circle"></i> OUT OF STOCK</span> -->
<!--					--><?php //} else {
//							?>
<!--					<span class="in-stoke"> <i class="fa fa-check-circle"></i> --><?php //echo $row['current_stock'] ; echo "units"; ?><!-- </span>	-->
<!--					--><?php //}
//							?>


					<span class="drops black"> <i class="fa fa-tint"></i> 300ML</span>
				</span>
				</div>  
			<div class="col-sm-12">


                <div class="fun-share ">
				<br/>
                    <?php
                    if($this->session->userdata('pin') == 'ok'){
                        $pincode = 1;
                    }
                    echo form_open(base_url() . 'index.php/home/image_details/'.$product_id .'/'. $category, array(
                        'class' => 'form-horizontal',
                        'method' => 'post',
                        'id' => 'blog_add',
                        'enctype' => 'multipart/form-data'
                    ));
                    ?>

                   <p><i class="fa fa-map-marker fa-2x" aria-hidden="true"></i>Check Availability  </p>
                    <?php if($pincode == 2){ ?>
				  <input type="text" class="form-control" name="pin" id="name" placeholder="Enter Pin Code"><br/>
                    <input type="submit" class="btn btn-dark" value="check">
				  <!--<button type="button" class="btn btn-dark">CHECK</button>-->
                    <?php } ?>

                    <?php if($pincode == 1){
                        $this->session->set_userdata('pin','ok');?>
                        <input type="text" class="form-control" name="pin" id="b" placeholder="Pincode is available" style="background-color:#61c002"><br/>
                        <input type="submit" class="btn btn-dark" value="check" disabled>
                        <!--<button type="button" class="btn btn-dark">CHECK</button>-->
                    <?php } ?>

                    <?php if($pincode == 0){ ?>
                        <input type="text" class="form-control" name="pin" id="name" placeholder="Delivery to pincode is not available" style="width:265px;background-color:#FF3C38"><br/>
                        <input type="submit" class="btn btn-small btn-dark" value="check">
                        <!--<button type="button" class="btn btn-dark">CHECK</button>-->
                    <?php } ?>


                    </form>
				</div>
            </div>
			</div>
			<div class="col-sm-12 ">
				<p>Check product delivery at your location to enable Add to Cart.</p>
				
            </div>
              <!-- QUIENTY -->
				<div class="col-sm-12">
		<?php  switch($pincode){
		    case 1: ?>
					<div class="fun-share"><span class="btn btn-small btn-dark" style="background-color:#61c002" onclick="to_cart(<?php echo $product_id; ?>,event);">
                            <i class="fa fa-shopping-cart"></i>
                            <?php if ($this->crud_model->is_added_to_cart($product_id) == "yes") {
                                echo translate('added_to_cart');
                            } else {
                                echo translate('add_to_cart');
                            }
                            ?>
                        </span><a href="<?php echo base_url(); ?>index.php/home/cart_checkout" class="btn btn-small btn-dark">Go to Cart</a>


                    </div>
                    <?php break; case 0:  ?>

                <div class="fun-share"><a href="<?php echo base_url(); ?>index.php/home/view_cart/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>" class="btn btn-small btn-dark" disabled>ADD TO CART</a>
					</div>

       <?php break;
            default:
                ?>
                <div class="fun-share"><a href="<?php echo base_url(); ?>index.php/home/view_cart/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>" class="btn btn-small btn-dark" disabled><?php if ($this->crud_model->is_added_to_cart($product_id) == "yes") {
                            echo translate('added_to_cart');
                        } else {
                            echo translate('add_to_cart');
                        }?></a>
                </div>
                <?php break; } ?>
				</div>
			  
              <!-- SHARE -->
             
           
				<hr>
              </div> <br><br>
            </div>

			<hr>
			<h5>  <?php echo $row['ingredients']; ?> </h5>
            <p class="justify" style="color:#000;"> <?php echo $row['description']; ?></p>
            <hr>
           
           
          </div>
        </div>
        
        <!--======= PRODUCT DESCRIPTION =========-->
       
      </div>
      
      <!--======= RELATED PRODUCTS =========-->
      <section class="section-p-60px new-arrival new-arri-w-slide">
        <div class="container"> 
          
          <!--  Tittle -->
          <div class="tittle tittle-2 animate fadeInUp" data-wow-delay="0.4s">
            <h5>RELATED PRODUCTS</h5>
            <p class="font-playfair">Most haver in your Shop </p>
          </div>
          
          <!--  New Arrival Tabs Products  -->
		  
		   
		  
          <div class="popurlar_product client-slide animate fadeInUp" data-wow-delay="0.4s"> 
            <?php
                    $this->db->limit(4);
                    
                    $latest=$this->db->get_where('product' , array('category' => $row['category']) )->result_array();
                    foreach($latest as $row1){
                        ?>
            <!--  New Arrival  -->
            
            <div class="items-in"> 
			<?php if($row1['current_stock'] == 0 || $row1['current_stock'] == NULL) { ?>

			<?php } else ?>
						<!-- Image --> 	
						<img src="<?php echo $this->crud_model->file_view1('product',$row1['product_id'],$row1['category'],'','','thumb','src','',''); ?>" alt=""> 
				
					<!-- Hover Details -->
                <a class="over-item" href="<?php echo base_url(); ?>index.php/home/image_details/<?php echo $row1['product_id']; ?>/<?php echo $row1['category']; ?>"></a>

                <!-- Item Name -->
					<div class="details-sec"> <a href="#."><?php echo $row1['title']; ?></a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row1['sale_price']; ?></span> </div>
			
			</div>
            
            <!--  New Arrival  -->            
            
            
            <!--  New Arrival  -->            
           
            
            <!--  New Arrival  -->            
          <?php } ?>
          </div>
					
        </div>
      </section>
    </section>
	
  </div>
   <?php endforeach;?>
  <!--======= Footer =========-->
    <footer>
        <div class="container">
            <div class="text-center"> <a href="#."><img src="../../../../images/logo.png" alt=""></a><br>
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
<!--  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> -->
  <!-- GO TO TOP End --> 
</div>
<!-- Wrap End -->
<script src="../../../../js/jquery-3.2.1.min.js"></script>

<script src="../../../../js/jquery-1.11.3.js"></script>

<script src="../../../../js/wow.min.js"></script>
<script src="../../../../js/bootstrap.min.js"></script> 
<script src="../../../../js/own-menu.js"></script> 
<script src="../../../../js/owl.carousel.min.js"></script> 
<script src="../../../../js/jquery.magnific-popup.min.js"></script> 
<script src="../../../../js/jquery.isotope.min.js"></script> 
<script src="../../../../js/jquery.flexslider-min.js"></script> 
<script src="../../../../js/jquery.elevatezoom.js"></script> 

<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="../../../../rs-plugin/js/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="../../../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script> 
<script src="../../../../js/main.js"></script> 
<script>
$(".zoom_05").elevateZoom({ 
	zoomType	: "inner", 
	cursor		: "crosshair"
}); 
</script>
<style>
    #name::-webkit-input-placeholder {
        color: black;
    }
    #b::-webkit-input-placeholder {
        color: black;
    }


</style>
</body>
</html>