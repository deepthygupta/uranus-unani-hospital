<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?php
        $vendor_system = $this->crud_model->get_settings_value('general_settings', 'vendor_system');
        $physical_system = $this->crud_model->get_settings_value('general_settings', 'physical_product_activation');
        $digital_system = $this->crud_model->get_settings_value('general_settings', 'digital_product_activation');
        $description = $this->crud_model->get_settings_value('general_settings', 'meta_description');
        $keywords = $this->crud_model->get_settings_value('general_settings', 'meta_keywords');
        $author = $this->crud_model->get_settings_value('general_settings', 'meta_author');
        $system_name = $this->crud_model->get_settings_value('general_settings', 'system_name');
        $system_title = $this->crud_model->get_settings_value('general_settings', 'system_title');
        $map_api_key = $this->crud_model->get_settings_value('general_settings', 'google_api_key');
        $revisit_after = $this->crud_model->get_settings_value('general_settings', 'revisit_after');

        $page_title = ucfirst(str_replace('_', ' ', $page_title));
        $this->crud_model->check_vendor_mambership();
        if ($this->router->fetch_method() == 'product_view') {
            $keywords .= ',' . $product_tags;
        }
        if ($this->router->fetch_method() == 'vendor_profile') {
            $keywords .= ',' . $vendor_tags;
        }
        ?>
        <title><?php echo $system_title; ?> || <?php echo $page_title; ?></title>
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url(); ?>css/main.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url(); ?>css/style.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url(); ?>css/responsive.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url(); ?>css/animate.css" rel="stylesheet" type="text/css">
        <link href="<?php echo base_url(); ?>css/font-awesome.min.css" rel="stylesheet" type="text/css">   
        <link href="<?php echo base_url(); ?>css/custom.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>rs-plugin/css/settings.css" media="screen" />
        <script src="<?php echo base_url(); ?>js/modernizr.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>images/favicon.ico">
        <script> var base_url = "<?php echo base_url(); ?>";</script>
        <script src="<?php echo base_url(); ?>template/front/js/ajax_method.js"></script>
        <script src="<?php echo base_url(); ?>template/front/js/bootstrap-notify.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/bootstrap-select/js/bootstrap-select.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/superfish/js/superfish.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.sticky.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.easing.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.smoothscroll.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/smooth-scrollbar.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.cookie.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/modernizr.custom.js"></script>
        <script src="<?php echo base_url(); ?>template/front/js/theme.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false&key="></script>
        <script src="<?php echo base_url(); ?>template/front/js/cart.js"></script>

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
                <div class="position-center-center"> <img src="<?php echo base_url(); ?>images/preloader.gif">

                </div>
            </div>
        </div>

        <div id="wrap">
            <?php if ($page_name == "home1" || $page_name == "home") { ?>
                <header class="header">   
                <?php } else { ?>
                    <header class="header header-common">  
                    <?php } ?>
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
                                    <li class="logo1"><a href="<?php echo base_url(); ?>index.php/home/home"><img src="<?php echo base_url(); ?>images/logo.png" alt="logo"></a></li>
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