<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Uranus || Our Team</title>
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../../css/main.css" rel="stylesheet" type="text/css">
        <link href="../../css/style.css" rel="stylesheet" type="text/css">
        <link href="../../css/responsive.css" rel="stylesheet" type="text/css">
        <link href="../../css/animate.css" rel="stylesheet" type="text/css">
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="../../css/custom.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../../rs-plugin/css/settings.css" media="screen" />
        <script src="../../js/modernizr.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="../../images/favicon.ico">

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
                <div class="position-center-center"> <img src="../../images/preloader.gif">

                </div>
            </div>
        </div>

        <div id="wrap">
            <header class="header-style-2">
                <div class="top-bar">
                    <div class="container"> 
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
                                <li class="logo1"><a href="<?php echo base_url(); ?>"><img src="images/" alt="logo"></a></li>
                                <li><a href="<?php echo base_url(); ?>index.php">HOME</a></li>
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
                                    <a href="#">
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
            </header>           

            <div class="content">
                <section class="sub-banner">
                    <div class="container">
                        <h4>OUR TEAM</h4>
                        <ol class="breadcrumb">
                            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
                            <li class="active">OUR TEAM</li>
                        </ol>
                    </div>
                </section>   

                <section class="section-p-30px events-page">
                    <div class="container">
                        <div class="row">     
                            <div class="col-sm-12 animate fadeInRight" data-wow-delay="0.4s"> 
                                <?php
                                $this->db->order_by("id", "desc");
                                $members = $this->db->get('team_members')->result_array();
                                foreach ($members as $row) {
                                    ?>
                                    <div class="blog-posts medium-images">
                                        <ul>                                            
                                            <li class="animate fadeInUp" data-wow-delay="0.4s">
                                                <div class="row">                                                   
                                                    <div class="col-sm-5"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('team_members', $row['id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                                    </div>
                                                    <div class="col-sm-7">  
                                                        <a href="#" class="tittle-post"><?php echo $row['name']; ?>   </a>
                                                        <p><?php echo $row['specialization']; ?></p>
                                                    </div>
                                                </div>
                                            </li>       
                                        </ul>
                                    </div>
                                <?php } ?>           
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
                                    <p><i class="fa fa-home" aria-hidden="true"></i> Hard 'N' Soft Annex, Opp: KMH Hospital,Manjeri, Kerala � 676122</p>
                                    <p><i class="fa fa-envelope" aria-hidden="true"></i> sales@uranus.com</p>
                                    <p><i class="fa fa-phone" aria-hidden="true"></i> +91 999999999</p>
                                </li>
                            </ul>
                        </div>


                    </div>

                    <div class="rights">
                        <p>� 2018 Uranus. All Rights Reserved. Powered By <a href="http://qproinnovations.com" target="blank">QPro Innovations</a></p>
                    </div>
                </div>
            </footer>   
        </div>
        <script src="../../js/jquery-1.11.3.js"></script> 
        <script src="../../js/wow.min.js"></script> 
        <script src="../../js/bootstrap.min.js"></script> 
        <script src="../../js/own-menu.js"></script> 
        <script src="../../js/owl.carousel.min.js"></script> 
        <script src="../../js/jquery.magnific-popup.min.js"></script> 
        <script src="../../js/jquery.isotope.min.js"></script> 
        <script src="../../js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.tools.min.js"></script> 
        <script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script> 
        <script src="../../js/main.js"></script>
    </body>
</html>