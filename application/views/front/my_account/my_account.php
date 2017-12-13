<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>aaaaaaaaa</title>
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="<?php echo base_url() ?>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url() ?>/css/main.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url() ?>/css/style.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url() ?>/css/responsive.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url() ?>/css/animate.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url() ?>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url() ?>/css/custom.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/rs-plugin/css/settings.css" media="screen" />
        <script src="<?php echo base_url() ?>/js/modernizr.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url() ?>/images/favicon.ico">
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
    </head>
    <body>
        <div id="wrap">
            <header class="header-style-2">
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
                                <li class="logo1"><a href="<?php echo base_url(); ?>"><img src="images/" alt="logo"></a></li>
                                <li><a href="<?php echo base_url(); ?>index.php/home/home">HOME</a></li>
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
            </header>
            <!-- Header End -->

            <div class="content">
                <div class="content">
                    <section class="sub-banner">
                        <div class="container">
                            <h4>MY ACCOUNT</h4>
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li class="active">MY ACCOUNT</li>
                            </ol>
                        </div>
                    </section>

                    <section class="section-p-30px pages-in">
                        <div class="container">
                            <div class="shopping-cart">
                                <div class="cart-ship-info">
                                    <div class="row">
                                        <div class="col-sm-4 ">
                                            <div class="side-bar">
                                                <h4>DASHBOARD</h4>
                                                <ul class="cate">
                                                    <li class="active"><a href="#.">MY ACCOUNT </a></li>
                                                    <li><a href="<?php echo base_url(); ?>index.php/home/change_password">CHANGE PASSWORD </a></li>
                                                    <li><a href="<?php echo base_url(); ?>index.php/home/order">MY ORDERS </a></li>
                                                    <li><a href="<?php echo base_url(); ?>index.php/home/logout2">LOG OUT </a></li>
                                                </ul>
                                            </div>                                        
                                        </div>

                                        <div class="col-sm-8">
                                            <h6>Billing Address</h6>
                                            <hr>
                                            <?php
                                            echo form_open(base_url() . 'index.php/home/my_account_edit/', array(
                                                'class' => 'form-horizontal',
                                                'method' => 'post',
                                                'enctype' => 'multipart/form-data'
                                            ));
                                            ?>
                                            <ul class="row">
                                                <?php
                                                $account_data = $this->db->get_where('user', array(
                                                            'user_id' => $this->session->userdata('user_id')
                                                        ))->result_array();
                                                foreach ($account_data as $row) {
                                                    ?>
                                                    <li class="col-md-6">
                                                        <label>NAME:
                                                            <input type="text" class="form-control" name="username"  value="<?php echo $row['username']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-6">
                                                        <label>LAST NAME:
                                                            <input type="text" class="form-control" name="surname"  value="<?php echo $row['surname']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-12">
                                                        <label>EMAIL ADDRESS:
                                                            <input type="email" class="form-control" name="email"  value="<?php echo $row['email']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-12">
                                                        <label>PHONE:
                                                            <input type="text" class="form-control" name="phone"  value="<?php echo $row['phone']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-12">
                                                        <label>ADDRESS:
                                                            <input type="text" class="form-control" name="address1"  value="<?php echo $row['address1']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-4">
                                                        <label>CITY:
                                                            <input type="text" class="form-control" name="city"  value="<?php echo $row['city']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-4">
                                                        <label>STATE:
                                                            <input type="text" class="form-control" name="state"  value="<?php echo $row['state']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-md-4">
                                                        <label>PIN CODE:
                                                            <input type="text" class="form-control" name="zip"  value="<?php echo $row['zip']; ?>">
                                                        </label>
                                                    </li>
                                                    <li class="col-sm-12 no-margin">
                                                        <button type="submit" value="submit" class="btn btn-dark">Save</button>
                                                    </li>
                                                <?php } ?>
                                            </ul>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

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

        <script src="<?php echo base_url() ?>/js/jquery-1.11.3.js"></script>
        <script src="<?php echo base_url() ?>/js/wow.min.js"></script>
        <script src="<?php echo base_url() ?>/js/bootstrap.min.js"></script>
        <script src="<?php echo base_url() ?>/js/own-menu.js"></script>
        <script src="<?php echo base_url() ?>/js/owl.carousel.min.js"></script>
        <script src="<?php echo base_url() ?>/js/jquery.magnific-popup.min.js"></script>
        <script src="<?php echo base_url() ?>/js/jquery.isotope.min.js"></script>
        <script src="<?php echo base_url() ?>/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() ?>/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() ?>/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <script src="<?php echo base_url() ?>/js/main.js"></script>
    </body>
</html>