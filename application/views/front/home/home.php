<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Uranus || Home </title>
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/main.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">   
        <link href="css/custom.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
        <script src="js/modernizr.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <!--Start of Tawk.to Script-->
        <script type="text/javascript">
            var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
            (function () {
                var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = 'https://embed.tawk.to/5936437bb3d02e11ecc68647/default';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
        <!--End of Tawk.to Script-->
    </head>
    <body>
        
        <div id="loader">
             <div class="loader">
                 <div class="position-center-center"> <img src="images/preloader.gif">
 
                 </div>
             </div>
         </div>

        <div id="wrap">
            <header class="header">   
                <div class="top-bar">
                    <div class="container">
                        <div class="language">  <a href="#."><?php echo translate('Our Care, Your Cure'); ?></a></div>
                        <div class="top-links">
                            <ul>
                                <?php if ($this->session->userdata('user_login') != 'yes') { ?>
                                    <li><a href="<?php echo base_url(); ?>index.php/home/login2">LOGIN</a></li>
                                    <li><a href="<?php echo base_url(); ?>index.php/home/login2">REGISTER</a></li>
                                    <li><a href="<?php echo base_url(); ?>index.php/home/cart_checkout">MY CART</a></li>
                                <?php } else { ?>
                                    <li><a href="<?php echo base_url(); ?>index.php/home/my_account">MY ACCOUNT</a></li>
                                    <li><a href="<?php echo base_url(); ?>index.php/home/logout2">LOGOUT</a></li>
                                    <li><a href="<?php echo base_url(); ?>index.php/home/cart_checkout">MY CART</a></li>
                                <?php } ?>
                            </ul>
                            <ul class="social_icons">
                                <li class="facebook"><a href="https://www.facebook.com/#"><i class="fa fa-facebook"></i> </a></li>
                                <li class="instagram"><a href=" https://www.instagram.com/#/"><i class="fa fa-instagram"></i> </a></li>

                            </ul>
                        </div>
                    </div>
                </div>

                <div class="sticky">
                    <div class="container">
                        <nav class="webimenu">
                            <div class="menu-toggle"> <i class="fa fa-bars"> </i> </div>
                            <ul class="ownmenu">
                                <li class="logo1"><a href="<?php echo base_url(); ?>"><img src="images/sitelogo.png" style="width: 180px;" alt="logo"></a></li>
                                <li><a href="#">HOME</a></li>
                                <li>
                                    <a href="<?php echo base_url(); ?>index.php/home/about_us">
                                        <?php echo translate('ABOUT US'); ?>
                                    </a>
                                </li>
                                <li >
                                    <a href="<?php echo base_url(); ?>index.php/home/shop">
                                        <?php echo translate('SERVICES'); ?>
                                    </a>
                                </li>
                                <li >
                                    <a href="<?php echo base_url(); ?>index.php/home/our_team">
                                        <?php echo translate('OUR TEAM'); ?>
                                    </a>
                                </li>
                                <li >
                                    <a href="<?php echo base_url(); ?>index.php/home/blog">
                                        <?php echo translate('BLOG & NEWS'); ?>
                                    </a>
                                </li>
                                <li >
                                    <a href="<?php echo base_url(); ?>index.php/home/gallery">
                                        <?php echo translate('GALLERY'); ?>
                                    </a>
                                </li>
                                <li >
                                    <a href="<?php echo base_url(); ?>index.php/home/event">
                                        <?php echo translate('EVENTS'); ?>
                                    </a>
                                </li>
                                </li>
                                <li >
                                    <a href="<?php echo base_url(); ?>index.php/home/contact1">
                                        <?php echo translate('CONTACT'); ?>
                                    </a>
                                </li>

                                <li class="shop-cart" ><a href="<?php echo base_url(); ?>index.php/home/cart_checkout"><i class="fa fa-shopping-cart"></i></a> <span class="numb"><?php echo count($this->cart->contents()); ?></span>

                                </li>
                                <li class="search-nav"><a href="#."><i class="fa fa-search"></i></a>
                                    <ul class="dropdown">
                                        <li class="row">
                                            <?php
                                            echo form_open(base_url() . 'index.php/home/search_cate', array(
                                                'class' => 'form-horizontal',
                                                'method' => 'post',
                                                'enctype' => 'multipart/form-data'
                                            ));
                                            ?>
                                            <div class="col-sm-4 no-padding">
                                                <select class="selectpicker">
                                                    <option>CLEAN</option>
                                                    <option>GLOW</option>
                                                    <option>ENERGY</option>
                                                    <option>HEAL YOUR GUT</option>

                                                </select>
                                            </div>
                                            <div class="col-sm-8 no-padding">
                                                <input type="search" name="search" class="form-control" placeholder="Search Here">
                                                <button type="submit"> <i class="fa fa-search"></i> </button>
                                            </div>
                                            </form>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="top-bar2">

                    </div>
                </div>

            </header>

            <section class="home-slider">
                <div class="tp-banner-container">
                    <div class="tp-banner" >
                        <ul>
                            <li data-transition="fade" data-slotamount="7"> <img src="images/slides/slide-1.jpg" data-bgposition="center top img-responsive" alt="" />
                                <div class="overlay"></div>                               
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
                                     style="color: #fff; font-size: 50px; text-transform: uppercase; font-weight: bold;">ADVANCED UNANI CARE TREATMENTS
                                </div>

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
                                     style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;">BEST ISO-CERTIFIED UNANI HOSPITAL</div>

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
                                     data-captionhidden="on"> </div>
                            </li>

                            <!-- Slider 2 -->
                            <li data-transition="fade" data-slotamount="7"> <img src="images/slides/slide-2.jpg" data-bgposition="center top img-responsive" alt="" />
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
                                     style="color: #fff; font-size: 50px; text-transform: uppercase; font-weight: bold;"> THE BEST UNANI TREATMENT HUB IN KERALA
                                </div>

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
                                     style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;">FIRST FULL-FLEDGED UNANI HOSPITAL</div>

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
                                     data-captionhidden="on"> </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>

            <div class="content">
                <section class="section-p-30px add_block_2">
                    <div class="container-fluid">
                        <ul class="row">
                            <?php
                            $this->db->order_by("coupon_id", "desc");
                            $this->db->limit(3);
                            $offer = $this->db->get('coupon')->result_array();
                            foreach ($offer as $row) {
                                ?>
                                <li class="col-sm-4 animate fadeInLeft" data-wow-delay="0.4s">
                                    <a href="<?php echo $row['url']; ?>">
                                        <img src="uploads/discount_image/<?php echo $row['image']; ?>" alt=""/>
                                    </a> 
                                </li>            
                            <?php } ?>
                        </ul>
                    </div>
                </section>

                <section class="section-p-30px popurlar_product">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12  animate fadeInUp" data-wow-delay="0.4s">                               
                                <div class="tittle">
                                    <h5>SERVICES</h5>
                                    <p>Our Special</p>
                                </div>
                            </div>

                            <?php
                            $this->db->limit(4);
                            $this->db->order_by("product_id", "desc");
                            $latest = $this->db->get('product')->result_array();
                            foreach ($latest as $row) {
                                ?>
                                <div class="col-md-3 animate fadeInUp" data-wow-delay="0.5s" >                                   
                                    <div class="items-in">                                      
                                        <a href="<?php echo base_url(); ?>index.php/home/image_details/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>">
                                            <img  src="<?php echo $this->crud_model->file_view1('product', $row['product_id'], $row['category'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                        </a>
                                    </div>
                                </div>
                            <?php } ?>  
                        </div>
                    </div>
                </section>

                <section class="section-p-30px collection-adds">
                    <div class="container">
                        <ul class="row">
                            <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.4s">
                                <div class="inn-sec"> <a href="#"> <img class="img-responsive" src="images/collection-img-1.jpg" alt=""> <span>HEAD1</span> </a> </div>
                            </li>
                            <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.6s">
                                <div class="inn-sec"> <a href="#"> <img class="img-responsive" src="images/collection-img-2.jpg" alt=""> <span>HEAD2</span> </a> </div>
                            </li>
                            <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.4s">
                                <div class="inn-sec"> <a href="#"> <img class="img-responsive" src="images/collection-img-3.jpg" alt=""> <span>HEAD3</span> </a> </div>
                            </li>
                            <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.6s">
                                <div class="inn-sec"> <a href="#"> <img class="img-responsive" src="images/collection-img-4.jpg" alt=""> <span>HEAD4</span> </a> </div>
                            </li>
                        </ul>
                    </div>
                </section>

                <section class="video-part animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.7">
                    <div class="overlay">
                        <h4>Watch Our Video</h4>
                        <a href="#" class="video-btn popup-vedio"><i class="ion-android-arrow-dropright-circle"></i></a>
                        <a href="#" class="link popup-vedio video-btn"></a>     
                    </div>
                </section>
                <section class="section-p-30px ">
                    <div class="container text-center">
                        <div class="row">                            
                        </div>
                    </div>
                </section>

                <section class="about-sebian bg-1 animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.4">
                    <div class="section-p-60px overlay ">
                        <div class="container">
                            <div class="tittle white animate fadeInUp" data-wow-delay="0.4s">
                                <h2 class="block-title">APPOINTMENT FORM</h2>
                                <div class="block-textappoint">To make a doctor’s appointment online, please fill the online form below.
                                    Our representative will get back to you at the earliest. 
                                </div>
                            </div>
                            <div class="clients-about-in">
                                <li>
                                    <div class="clients-about-slider animate fadeInUp" data-wow-delay="0.4s">
                                        <?php
                                        echo form_open(base_url() . 'index.php/home/appointment/', array(
                                            'method' => 'post',
                                            'id' => 'main-contact-form',
                                            'name' => 'contact_form',
                                            'enctype' => 'multipart/form-data'
                                        ));
                                        ?>
                                        <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                                            <div class="col-sm-5">
                                                <div class="form-group">
                                                    <input type="text" name="name" class="form-control" placeholder="Name" autocomplete="off" required>
                                                </div>
                                            </div>

                                            <div class="col-sm-7">
                                                <div class="form-group">
                                                    <input type="tel" name="phone" class="form-control" placeholder="Phone No" autocomplete="off" required>
                                                </div>
                                            </div>

                                            <div class="col-sm-5">
                                                <div class="form-group">
                                                    <input type="email" name="email" class="form-control" autocomplete="off" placeholder="Email" >
                                                </div>
                                            </div>

                                            <div class="col-sm-7">
                                                <div class="form-group">
                                                    <input type="date" name="date" class="form-control" placeholder="mm/dd/yyyy" required>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">	
                                                <div class="form-group">
                                                    <textarea name="msg" id="msg" class="form-control" rows="4" placeholder="Enter your message" required></textarea>
                                                </div>  
                                            </div>	

                                        </div>	
                                        <div class="form-group">
                                            <button name="appoint_submit" type="submit" value="appoint_submit" class="btn-active-success">Send Now</button>
                                        </div>
                                        </form> 
                                    </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="subcribe animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.8">
                    <div class="overlay">
                        <div class="container">
                            <h4>subscribe</h4>
                            <div class="col-md-7 no-padding pull-right">
                                <div class="sub-mail">
                                    <?php
                                    echo form_open(base_url() . 'index.php/home/subscribe/', array(
                                        'method' => 'post'
                                    ));
                                    ?>
                                    <input type="email" name="subscribe" placeholder="YOUR EMAIL ADDRESS.." required autocomplete="off">  
                                    <button type="submit" name="subscribe_btn">SUBSCRIBE</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>     
            </div>

            <footer>
                <div class="container">
                    <div class="text-center"> <a href="#."><img src="<?php echo base_url(); ?>images/sitelogo.jpg" alt=""></a><br>
                        <p class="intro-small margin-t-40">We are dedicated to provide Unani Care in all modern facilities and environs. Merging traditional medicine with all possibilities of modern medical science, Kerala Unani Hospital provides best modern Unani Care across Kerala..</p>
                    </div>

                    <div class="footer-link row">
                        <div class="col-md-12">
                            <ul>
                                <li class="col-sm-4">
                                    <h5>INFORMATION</h5>
                                    <ul class="f-links">
                                        <li><a href=""> HOME</a></li>
                                        <li><a href="<?php echo base_url(); ?>index.php/home/about_us"> ABOUT US</a></li>
                                        <li><a href="<?php echo base_url(); ?>index.php/home/faq1"> FAQ</a></li>
                                        <li><a href="#."> PRIVACY & POLICY</a></li>
                                        <li><a href="#"> TERMS & CONDITIONS</a></li>
                                    </ul>
                                </li>
                                <li class="col-sm-4">
                                    <h5>MY ACCOUNT</h5>
                                    <ul class="f-links">
                                        <li><a href="<?php echo base_url(); ?>index.php/home/my_account">MY ACCOUNT</a></li>
                                        <li><a href="<?php echo base_url(); ?>index.php/home/login2"> LOGIN</a></li>
                                        <li><a href="<?php echo base_url(); ?>index.php/home/cart_checkout"> MY CART</a></li>  
                                    </ul>
                                </li>
                                <li class="col-sm-4">
                                    <h5>CONTACT US</h5>
                                    <p><i class="fa fa-home" aria-hidden="true"></i> Hard 'N' Soft Annex, Opp: KMH Hospital,Manjeri, Kerala – 676122</p>
                                    <p><i class="fa fa-envelope" aria-hidden="true"></i> sales@uranus.com</p>
                                    <p><i class="fa fa-phone" aria-hidden="true"></i> +91 999999999</p>
                                </li>
                            </ul>
                        </div>


                    </div>

                    <div class="rights">
                        <p>© 2018 Uranus. All Rights Reserved. Powered By <a href="http://qproinnovations.com" target="blank">QPro Innovations</a></p>
                    </div>
                </div>
            </footer>            
        </div>

        <script src="js/jquery-1.11.3.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/own-menu.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.flexslider-min.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>