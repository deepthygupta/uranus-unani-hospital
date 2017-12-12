<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Raw Squeezed || Password Change</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- FONTS ONLINE -->
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    <!--MAIN STYLE-->
    <link href="<?php echo base_url() ?>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ?>/css/main.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ?>/css/style.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ?>/css/responsive.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ?>/css/animate.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ?>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- ADD YOUR OWN STYLING HERE. AVOID TO USE STYLE.CSS AND MAIN.CSS. IT WILL BE HELPFUL FOR YOU IN FUTURE UPDATES -->
    <link href="<?php echo base_url() ?>/css/custom.css" rel="stylesheet" type="text/css">

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/rs-plugin/css/settings.css" media="screen" />

    <!-- JavaScripts -->
    <script src="<?php echo base_url() ?>/js/modernizr.js"></script>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url() ?>/images/favicon.ico">
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
        <div class="position-center-center"> <img src="<?php echo base_url() ?>/images/preloader.gif" alt="">
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

                        <li class="logo1"><a href="<?php echo base_url(); ?>index.php/home/home"><img src="../../images/logo-hdr.png" alt="logo"></a></li>
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
                <h4>CHANGE PASSWORD</h4>
                <!-- Breadcrumb -->
                <ol class="breadcrumb">
                    <li><a href="#">MY ACCOUNT</a></li>
                    <li class="active">CHANGE PASSWORD</li>
                </ol>
            </div>
        </section>

        <!--======= PAGES INNER =========-->
        <section class="section-p-30px pages-in">
            <div class="container">

                <div class="shopping-cart">
                    <div class="cart-ship-info">
                        <div class="row">

                            <!--======= SIDE BAR =========-->
                            <div class="col-sm-4">
                                <div class="side-bar">
                                    <h4>DASHBOARD</h4>

                                    <!-- HEADING -->

                                    <!-- CATEGORIES -->
                                    <ul class="cate">
                                        <li><a href="<?php echo base_url(); ?>index.php/home/my_account">MY ACCOUNT </a></li>
                                        <li ><a href="#">CHANGE PASSWORD </a></li>
                                        <li class="active"><a href="<?php echo base_url(); ?>index.php/home/order">MY ORDERS </a></li>
                                        <li><a href="<?php echo base_url(); ?>index.php/home/logout2">LOG OUT </a></li>

                                        <!--                <li><a href="#.">LOG OUT </a></li>-->


                                    </ul>


                                </div>
                                <!--              <div class="side-bar">-->
                                <!--                  <h5>Refer-A-Friend</h5>-->
                                <!--                  <li class="col-md-12 well text-center">-->
                                <!--                      <p><a href="#" >Click Here to refer-a-friend</a></p>-->
                                <!--                  </li>-->
                                <!---->
                                <!---->
                                <!---->
                                <!--              </div>-->
                            </div>


                            <div class="col-sm-8">
                                <h5 style="color:#61c002;"> <?php echo $txt; ?></h5>
                                <h6>Change Password</h6>
                                <hr>

                                <?php
                                echo form_open(base_url() . 'index.php/home/change_password1', array(
                                    'class' => 'contact-form',
                                    'method' => 'post',
                                    'id' => 'contact_form',
                                    'role' => 'form',

                                    'enctype' => 'multipart/form-data'
                                ));
                                ?>
                                <ul class="row">

                                    <!-- *COUNTRY -->

                                    <!-- Name -->
                                    <li class="col-md-12">
                                        <label> * CURRENT PASSWORD
                                            <input type="password" name="current_password" value="" placeholder="" required>
                                        </label>
                                    </li>
                                    <!-- LAST NAME -->
                                    <li class="col-md-6">
                                        <label> *NEW PASSWORD
                                            <input type="password" name="new_password" value="" placeholder="" required>
                                        </label>
                                    </li>
                                    <!-- LAST NAME -->
                                    <li class="col-md-6">
                                        <label> *RE-TYPE PASSWORD
                                            <input type="password" name="re_password" value="" placeholder="" required>
                                        </label>
                                    </li>

                                    <!-- TOWN/CITY -->
                                    <li class="col-sm-12 no-margin">
                                        <p class="red">* Required Fields</p>
                                    </li>



                                    <!-- COUNTRY -->

                                    <!-- POSTCODE -->


                                    <!-- EMAIL ADDRESS -->

                                    <!-- PHONE -->
                                    <button type="submit" value="submit" class="btn" id="btn_submit">SUBMIT</button>

                                    <!--                    <a href="#." class="btn btn-small btn-dark pull-right">SUBMIT</a> -->
                                    <!-- CREATE AN ACCOUNT -->


                                    <!-- SHIP TO BILLING ADDRESS -->

                                </ul>
                                </form>
                                <br/>




                            </div>


                        </div>
                    </div>
                </div>
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
                            <li><a href="https://www.instagram.com/p/BTWZ14KDomT/?taken-by=rawsqueezed"><img src="<?php echo base_url() ?>/images/instagram/inst1.jpg" alt=""></a></li>
                            <li><a href="https://www.instagram.com/p/BTiJf-sjcZ9/?taken-by=rawsqueezed"><img src="<?php echo base_url() ?>/images/instagram/inst2.jpg" alt=""></a></li>
                            <li><a href="https://www.instagram.com/p/BTsnvCEDuLR/?taken-by=rawsqueezed"><img src="<?php echo base_url() ?>/images/instagram/inst3.jpg" alt=""></a></li>
                            <li><a href="https://www.instagram.com/p/BUjYnaJj2wF/?taken-by=rawsqueezed"><img src="<?php echo base_url() ?>/images/instagram/inst4.jpg" alt=""></a></li>
                            <li><a href="https://www.instagram.com/p/BUmAgFEjZXA/?taken-by=rawsqueezed"><img src="<?php echo base_url() ?>/images/instagram/inst5.jpg" alt=""></a></li>
                            <li><a href="https://www.instagram.com/rawsqueezed/"><img src="<?php echo base_url() ?>/images/instagram/inst6.jpg" alt=""></a></li>


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
<script src="<?php echo base_url() ?>/js/jquery-1.11.3.js"></script>
<script src="<?php echo base_url() ?>/js/wow.min.js"></script>
<script src="<?php echo base_url() ?>/js/bootstrap.min.js"></script>
<script src="<?php echo base_url() ?>/js/own-menu.js"></script>
<script src="<?php echo base_url() ?>/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url() ?>/js/jquery.magnific-popup.min.js"></script>
<script src="<?php echo base_url() ?>/js/jquery.isotope.min.js"></script>
<script src="<?php echo base_url() ?>/js/jquery.flexslider-min.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="<?php echo base_url() ?>/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="<?php echo base_url() ?>/js/main.js"></script>
</body>
</html>