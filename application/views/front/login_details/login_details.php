<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Raw Squeezed || Pay viewcart</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- FONTS ONLINE -->
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic'
          rel='stylesheet' type='text/css'>
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
    <link rel="stylesheet" type="text/css" href="../../rs-plugin/css/settings.css" media="screen"/>

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
        <div class="position-center-center"><img src="../../images/preloader.gif" alt="">

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
                    <div class="menu-toggle"><i class="fa fa-bars"> </i></div>
                    <ul class="ownmenu">

                        <li class="logo1"><a href="<?php echo base_url(); ?>index.php/home/home"><img src="../../images/logo-hdr.png" alt="logo"></a></li>

                        </li>
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
                                        <button type="submit"><i class="fa fa-search"></i></button>
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
                <h4>SHOPPING CART</h4>
                <!-- Breadcrumb -->
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">SHOPPING CART</li>
                </ol>
            </div>
        </section>

        <!--======= PAGES INNER =========-->
        <section class="section-p-30px pages-in chart-page">
            <div class="container">

                <!-- Payments Steps -->
                <div class="payment_steps">
                    <ul class="row">
                        <!-- SHOPPING CART -->
                        <li class="col-sm-4"><i class="fa fa-shopping-cart"></i>
                            <h6>SHOPPING CART</h6>
                        </li>

                        <!-- CHECK OUT DETAIL -->
                        <li class="col-sm-4 current"><i class="fa fa-align-left"></i>
                            <h6>CHECK OUT DETAIL</h6>
                        </li>

                        <!-- ORDER COMPLETE -->
                        <li class="col-sm-4"><i class="fa fa-check"></i>
                            <h6>ORDER COMPLETE</h6>
                        </li>
                    </ul>
                </div>

                <!-- Payments Steps -->
                <div class="shopping-cart">

                    <!-- SHOPPING INFORMATION -->
                    <div class="cart-ship-info">
                        <div class="row">

                            <!-- ESTIMATE SHIPPING & TAX -->
                            <div class="col-sm-6">

                                <h6>Billing Address</h6>
                                <?php
                                $edit_data = $this->db->get_where('user', array('user_id' => $user_id))->result_array();
                                foreach ($edit_data as $row):
                                ?>
                                <?php
                                echo form_open(base_url() . 'index.php/home/place_order/' .  $row['user_id'], array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'enctype' => 'multipart/form-data'
                                ));
                                ?>
                                <ul class="row">

                                    <!-- *COUNTRY -->

                                    <!-- Name -->
                                    <li class="col-md-12">
                                        <label>NAME:<?php echo $row['username']; ?></label>
                                    </li>
                                    <li class="col-md-12">
                                        <label>LAST NAME: <?php echo $row['surname']; ?></label>
                                    </li>
                                    <!-- LAST NAME -->
                                    <li class="col-md-12">
                                        <label>EMAIL ADDRESS:<?php echo $row['email']; ?></label>
                                    </li>

                                    <li class="col-md-12">
                                        <!-- ADDRESS -->
                                        <label>ADDRESS:<?php echo $row['address1']; ?> ,<?php echo $row['city']; ?>
                                            , <?php echo $row['state']; ?></label>
                                    </li>
                                    <!-- TOWN/CITY -->


                                    <!-- COUNTRY -->


                                    <!-- POSTCODE -->
                                    <li class="col-md-12">
                                        <label>PIN CODE: <?php echo $row['zip']; ?></label>
                                    </li>


                                    <!-- PHONE -->
                                    <li class="col-md-12">
                                        <label>PHONE: <?php echo $row['phone']; ?>
                                        </label>
                                    </li>


                                    <!-- SHIP TO BILLING ADDRESS -->

                                </ul>

                            </div>

                            <!-- SUB TOTAL -->
                            <div class="col-sm-6">

                                <div class="order-place">
                                    <h5>YOUR ORDER</h5>

                                    <div class="order-detail">
                                        <p>PRODUCT <span>TOTAL</span></p>
                                        <div class="item-order">
                                            <?php
                                            $carted = $this->cart->contents();

                                            foreach ($carted as $items) {
                                                ?>
                                                <p><?php echo $items['name']; ?> x <?php echo $items['qty']; ?><span
                                                            class="color"> <i class="fa fa-inr"
                                                                              aria-hidden="true"></i> <?php echo $items['subtotal']; ?> </span>
                                                </p>
                                            <?php } ?>
                                            <?php
                                            $carted = $this->cart->contents();
                                            foreach ($carted as $items) {
                                                ?>
                                                <!--                      <p class="text-right"><i class="fa fa-inr" aria-hidden="true"></i> --><?php //echo $items['subtotal'];
                                                ?><!--</p>-->
                                            <?php } ?>
                                        </div>
                                        <p>CART SUBTOTAL <span><i class="fa fa-inr" aria-hidden="true"></i><?php echo $this->crud_model->get_total(); ?></span>
                                        </p>
                                        <p>SHIPPING <span><?php if  ($this->crud_model->get_total() < 300 ) { ?> <i class="fa fa-inr" aria-hidden="true"></i> <?php echo 20; } else echo "FREE"; ?></span></p>
                                        <p>ORDER TOTAL <span><i class="fa fa-inr" aria-hidden="true"></i> <?php if  ($this->crud_model->get_total() < 300 ) { ?>  <?php echo $this->crud_model->shipping_total(); } else echo $this->crud_model->get_total(); ?></span>
                                        </p>
                                    </div>

                                    <div class="pay-meth">
                                        <h5>PAYMENT METHODS</h5>
                                        <ul <li>
                                            <div class="radio">
                                                <input id="" name="pay" class="styled" type="radio" value="online payment">
                                                <label for=""> Pay Now</label>
                                            </div>
                                            <p></p>
                                        </li>
                                            <li>
                                                <div class="radio">
                                                    <input id=""  name="pay"class="styled" type="radio" value="cash on delivery">
                                                    <label for=""> Cash On Delivery</label>
                                                </div>
                                            </li>


                                        </ul>
                                        <input type="hidden" name="msg" value= "<?php echo $msg; ?>" >
                                        <input type="hidden" name="date" value= "<?php echo $date; ?>">
                                        <input type="hidden" name="refresh_hash" value= "<?php echo rand( 100000, 999999); ?>">

                                        <button type="submit" value="submit" class="btn btn-dark" ">PLACE ORDER</button>

                                        <!--                                        <input type="submit" name="plece_order" value="PLACE ORDER" class="btn btn-small btn-dark pull-right">-->
                                        <!--                                        <a href="pay-complete.html" class="btn btn-small btn-dark pull-right">PLACE-->
                                        <!--                                            ORDER</a>-->
                                    </div>
                                </div>
                                </form> <?php endforeach ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--======= RELATED PRODUCTS =========-->

        </section>
    </div>

    <!--======= Footer =========-->
    <footer>
        <div class="container">
            <div class="text-center"><a href="#."><img src="../../images/logo.png" alt=""></a><br>
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
<!--    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>-->
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