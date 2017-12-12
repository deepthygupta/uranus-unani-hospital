<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home | Rawsqueezed </title>
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
    <header class="header">
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

        <div class="sticky">
            <div class="container">

                <!-- Nav -->


                <nav class="webimenu">
                    <!-- MENU BUTTON RESPONSIVE -->
                    <div class="menu-toggle"> <i class="fa fa-bars"> </i> </div>
                    <ul class="ownmenu">



                        <li class="logo1"><a href="<?php echo base_url(); ?>index.php/home/home"><img src="../../images/logo.png" alt="logo"></a></li>


                        <li>
                            <a href="#">
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
            <div class="container-fluid">
                <div class="top-bar2">

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
    <!--======= HOME MAIN SLIDER =========-->
    <section class="home-slider">
        <div class="tp-banner-container">
            <div class="tp-banner" >
                <ul>

                    <!-- Slider 1 -->
                    <li data-transition="fade" data-slotamount="7"> <img src="../../images/slides/slide-4.jpg" data-bgposition="center top img-responsive" alt="" />
                        <div class="overlay"></div>
                        <!-- Layer -->

                        <!-- Layer -->
                        <div class="tp-caption sft font-montserrat tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="300"
                             data-speed="700"
                             data-start="2700"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 36px; text-transform: uppercase;"> </div>

                        <!-- Layer -->
                        <div class="tp-caption sft font-montserrat  tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="270"
                             data-speed="720"
                             data-start="3200"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 70px; text-transform: uppercase; font-weight: bold;">100% Fresh &amp; Natural </div>




                        <!-- Layer -->
                        <div class="tp-caption sft tp-resizeme font-montserrat rs-parallaxlevel-4"
                             data-x="center"
                             data-y="380"
                             data-speed="1500"
                             data-start="3200"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-easing="Back.easeOut"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;">cold press juices</div>

                        <div class="tp-caption sfb  font-playfair text-center tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="680"
                             data-speed="1500"
                             data-start="3200"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;"></div>

                        <!-- Layer -->
                        <div class="tp-caption sfb tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="440"
                             data-speed="700"
                             data-start="4000"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"> <a href="<?php echo base_url(); ?>index.php/home/shop" class="btn">Shop Now</a> </div>
                    </li>

                    <!-- Slider 2 -->
                    <li data-transition="fade" data-slotamount="7"> <img src="images/slides/slide-5.jpg" data-bgposition="center top img-responsive" alt="" />
                        <div class="overlay"></div>
                        <!-- Layer -->

                        <!-- Layer -->
                        <div class="tp-caption sft font-montserrat tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="450"
                             data-speed="700"
                             data-start="2700"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 36px; text-transform: uppercase;">  </div>

                        <!-- Layer -->
                        <div class="tp-caption sft font-montserrat  tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="270"
                             data-speed="720"
                             data-start="3200"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 70px; text-transform: uppercase; font-weight: bold;"> Fill Your Cravings   </div>




                        <!-- Layer -->
                        <div class="tp-caption sft tp-resizeme font-montserrat rs-parallaxlevel-4"
                             data-x="center"
                             data-y="380"
                             data-speed="1500"
                             data-start="3200"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-easing="Back.easeOut"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;">With Health Raw Juices</div>

                        <div class="tp-caption sfb  font-playfair text-center tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="680"
                             data-speed="1500"
                             data-start="3200"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"
                             style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;"></div>

                        <!-- Layer -->
                        <div class="tp-caption sfb tp-resizeme rs-parallaxlevel-4"
                             data-x="center"
                             data-y="440"
                             data-speed="700"
                             data-start="4000"
                             data-easing="easeOutBack"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.1"
                             data-endelementdelay="0.1"
                             data-endspeed="300"
                             data-captionhidden="on"> <a href="<?php echo base_url(); ?>index.php/home/shop" class="btn">Shop Now</a> </div>
                    </li>

                    <!-- Slider 3 -->

                </ul>
            </div>
        </div>
    </section>

    <!-- CONTENT START -->
    <div class="content">

        <!--======= Add Blocks =========-->
        <section class="section-p-30px add_block_2">

            <div class="container-fluid">

                <ul class="row">
                    <?php
                    $this->db->order_by("coupon_id", "desc");
                    $this->db->limit(3);
                    $offer=$this->db->get('coupon')->result_array();

                    //foreach(array_slice($offer, 0, 3) as $row ):
                    foreach($offer as $row){
                        ?>
                        <li class="col-sm-4 animate fadeInLeft" data-wow-delay="0.4s">
                            <a href="<?php echo $row['url']; ?>">
                                <img src="../../uploads/discount_image/<?php echo $row['image']; ?>" alt=""/>
                            </a> </li>
                        <!--                    <li class="col-sm-4 animate fadeInRight" data-wow-delay="0.4s"> <a href="#."><img src="images/add_block_2.jpg" alt=""></a> </li>-->
                        <!--                    <li class="col-sm-4 animate fadeInRight" data-wow-delay="0.4s"> <a href="#."><img src="images/add_block_2.jpg" alt=""></a> </li>-->
                    <?php } ?>
                </ul>

            </div>

        </section>



        <!--======= Popurlar Product =========-->
        <section class="section-p-30px popurlar_product">
            <div class="container">
                <div class="row">

                    <!-- Popurlar Product 1 -->
                    <div class="col-md-12  animate fadeInUp" data-wow-delay="0.4s">
                        <!-- Popurlar Tittke -->
                        <div class="tittle">
                            <h5>NEW ARRIVALS</h5>
                            <p>Latest Products</p>
                        </div>
                    </div>


                    <!-- Popurlar Slider -->
                    <?php
                    $this->db->limit(4);
                    $this->db->order_by("product_id", "desc");
                    $this->db->where("featured","ok");
                    $latest=$this->db->get('product')->result_array();
                    foreach($latest as $row){
                        ?>
                        <div class="col-md-3 animate fadeInUp" data-wow-delay="0.5s" >
                            <!-- col-2 -->
                            <div class="items-in">
                                <!-- Image -->
                                <a href="<?php echo base_url(); ?>index.php/home/image_details/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>">
                                    <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" alt=""/>
                                </a>
                                <div class="hot-tag"> NEW </div>
                                <!-- Hover Details -->



                                <a class="over-item" href="<?php echo base_url(); ?>index.php/home/image_details/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>"></a>



                                <!-- Item Name -->
                                <div class="details-sec"> <a href="#."><?php echo $row['title'] ?></a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['sale_price'] ?></span> </div>

                            </div>
                        </div>
                    <?php } ?>

                    <!-- col-2 -->


                    <!-- col-3 -->

                    <!-- col-4 -->

                </div>


            </div>
        </section>
    <!--======= COLLECRION =========-->
    <section class="section-p-30px collection-adds">
        <div class="container">
            <ul class="row">

                <!-- Collection Add -->
                <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.4s">
                    <div class="inn-sec"> <a href="<?php echo base_url(); ?>index.php/home/cate "> <img class="img-responsive" src="../../images/collection-img-1.jpg" alt=""> <span>CLEAN</span> </a> </div>
                </li>

                <!-- Collection Add -->
                <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.6s">
                    <div class="inn-sec"> <a href="<?php echo base_url(); ?>index.php/home/cate"> <img class="img-responsive" src="../../images/collection-img-2.jpg" alt=""> <span>GLOW</span> </a> </div>
                </li>

                <!-- Collection Add -->
                <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.4s">
                    <div class="inn-sec"> <a href="<?php echo base_url(); ?>index.php/home/cate"> <img class="img-responsive" src="../../images/collection-img-3.jpg" alt=""> <span>ENERGY</span> </a> </div>
                </li>

                <!-- Collection Add -->
                <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.6s">
                    <div class="inn-sec"> <a href="<?php echo base_url(); ?>index.php/home/cate"> <img class="img-responsive" src="../../images/collection-img-4.jpg" alt=""> <span>HEAL YOUR GUT</span> </a> </div>
                </li>
            </ul>
        </div>
    </section>

    <!--======= video =========-->
    <section class="video-part animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.7">
        <div class="overlay">
            <h4>Watch Our Video</h4>
            <a href="#" class="video-btn popup-vedio"><i class="ion-android-arrow-dropright-circle"></i></a>

            <!--  Video Section -->
            <a href="#" class="link popup-vedio video-btn"></a>

            <!--======= POPUP VIDEO START =========-->
<!--            <div id="pop-open" class="zoom-anim-dialog mfp-hide pop-open-style">-->
<!--                <div class="pop_up">-->
<!--                    <div class="video">-->
<!--                        <!--  Video Link -->-->
<!--                        <iframe src="https://player.vimeo.com/video/7449107"></iframe>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
            <!--======= POPUP VIDEO END =========-->

        </div>
    </section>
    <section class="section-p-30px ">
        <div class="container text-center">
            <div class="row">
                <div class="tittle">
                    <h5>WHY COLD PRESS?</h5>
            
                </div>
                <div class="col-sm-12 animate fadeInLeft" data-wow-delay="0.4s">
                    <div class="logo1 "> <img class="img-responsive"src="../../images/arow.jpg" alt=""> </div>
                </div>
                <div class="col-sm-12 animate fadeInRight" data-wow-delay="0.4s">
                    <div ><img class="img-responsive" src="../../images/why.jpg" alt=""> </div>
                </div>
                <div class="col-sm-12 animate fadeInLeft text-center" data-wow-delay="0.4s">
                    <p>Your daily target of  vegetables and fruits is 6-8 servings per day.But most of us are malnourished because With cold pressed juices which are made-to-order by using machines
                    </p>
                </div>


            </div>
        </div>
    </section>





    <!--======= estimonial  =========-->
    <section class="about-sebian bg-1 animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.4">
        <div class="section-p-60px overlay ">
            <div class="container">

                <!--  Tittle -->
                <!--  Tittle -->
                <div class="tittle white animate fadeInUp" data-wow-delay="0.4s">
                    <h5>Testimonial</h5>
                    <p>What Customer Say?</p>
                </div>

                <!--  Intro Text  -->

                <div class="clients-about-in">

                    <li>
                    <!--  What People Says -->
                    <div class="clients-about-slider animate fadeInUp" data-wow-delay="0.4s">
                        <?php
                        $cate=$this->db->get('testimonial')->result_array();
                        foreach(array_slice($cate, 0, 3) as $row ):
                        ?>
                        <!--  Slide 1 -->
                        <div class="media">
                            <div class="media-left">
                                <!--  Avatar -->
                                <div class="avatar">
                                    <img class="media-object" src="<?php echo $this->crud_model->file_view('testimonial',$row['testimonial_id'],'','','thumb','src','',''); ?>" alt=""/>
                                </div>
                            </div>
                            <!--  Text -->
                            <div class="media-body">
                                <p><?php echo $row['description']; ?></p>
                                <hr>
                                <h6><?php echo $row['author']; ?></h6>
                                <span><?php echo $row['des_and_company']; ?></span> </div>
                        </div>
                        <?php endforeach ?>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--======= end =========-->

    <!--======= Subcribe =========-->
        <section class="subcribe animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.8">
            <div class="overlay">
                <div class="container">
                    <h4>subscribe</h4>
                    <!--  Subsribe Form -->
                    <div class="col-md-7 no-padding pull-right">
                        <div class="sub-mail">
                            <?php
                            echo form_open(base_url() . 'index.php/home/subs/', array(

                                'method' => 'post',
                                'enctype' => 'multipart/form-data'
                            ));
                            ?>
                                <input type="email" name="subscribe" placeholder="YOUR EMAIL ADDRESS.." required>
                                <!--  Button -->
<!--                            <input type="submit" value="submit">-->
                                <button type="submit">SUBSCRIBE</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    <!--======= Popurlar Product =========-->


    <!--======= Video Part =========-->

    <!--======= Core Feature =========-->


    <!--======= Core Feature =========-->



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
<!--<a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>-->
<!-- GO TO TOP End -->
</div>
<!-- Wrap End -->
<script src="../../js/jquery-1.11.3.js"></script>
<script src="../../js/wow.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/own-menu.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<script src="../../js/jquery.magnific-popup.min.js"></script>
<script src="../../js/jquery.flexslider-min.js"></script>
<script src="../../js/jquery.isotope.min.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="../../js/main.js"></script>
</body>
</html>