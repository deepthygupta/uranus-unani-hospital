<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Uranus | Place Order </title>  
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="../../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../../../css/main.css" rel="stylesheet" type="text/css">
        <link href="../../../css/style.css" rel="stylesheet" type="text/css">
        <link href="../../../css/responsive.css" rel="stylesheet" type="text/css">
        <link href="../../../css/animate.css" rel="stylesheet" type="text/css">
        <link href="../../../css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="../../../css/custom.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../../../rs-plugin/css/settings.css" media="screen" />
        <script src="../../../js/modernizr.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="../../../images/favicon.ico">
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

            <div class="content">
                <section class="sub-banner">
                    <div class="container">
                        <h4>SHOPPING CART</h4>
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">SHOPPING CART</li>
                        </ol>
                    </div>
                </section>

                <section class="section-p-30px pages-in chart-page">
                    <div class="container"> 
                        <div class="payment_steps">
                            <ul class="row">
                                <li class="col-sm-4"> <i class="fa fa-shopping-cart"></i>
                                    <h6>SHOPPING CART</h6>
                                </li>
                                <li class="col-sm-4 "> <i class="fa fa-align-left"></i>
                                    <h6>CHECK OUT DETAIL</h6>
                                </li>
                                <li class="col-sm-4 current"> <i class="fa fa-check"></i>
                                    <h6>ORDER COMPLETE</h6>
                                </li>
                            </ul>
                        </div>

                        <div class="shopping-cart"> 
                            <div class=" ">
                                <div class="row ">
                                    <div class="col-sm-12 text-center" >
                                        <h6><i class="fa fa-check-square-o fa-5x green" aria-hidden="true"></i> <br>THANK YOU FOR YOUR PURCHASE! </h6>
                                        <hr>
                                        <p>Your order is: #<?php echo $sale_code; ?>.</p>
                                        <p>You will receive an order Notifications email with details of your order</p>
                                        <br/>
                                        <br/>
                                    </div>

                                    <div class="col-sm-12 text-center" >
                                        <h6>CUSTOMER INFORMATION</h6>
                                        <br/>
                                    </div>
                                    <div class="col-sm-6 well">

                                        <h6> Shipping address</h6>
                                        <hr>
                                        <?php
                                        $edit_data = $this->db->get_where('user', array('user_id' => $user_id))->result_array();
                                        foreach ($edit_data as $row):
                                            ?>
                                            <p>	<?php echo $row['username']; ?> <?php " " ?> <?php echo $row['surname']; ?></p>
                                            <p>	<?php echo $row['address1']; ?>,<?php echo $row['city']; ?>,<?php echo $row['state']; ?><?php echo $row['country']; ?></p>
                                            <p>	<?php echo $row['zip']; ?> </p>
                                            <p>	<?php echo $row['phone']; ?></p>
                                        <?php endforeach ?>
                                        <p><Strong>	Shipping method</strong></p>
                                        <?php
                                        $edit_data = $this->db->get_where('sale', array('sale_id' => $sale_id))->result_array();
                                        foreach ($edit_data as $row):
                                            ?>
                                            <p>	<?php
                                                if ($row['shipping'] == 20)
                                                    echo "Shipping charge - Rs.20";
                                                else
                                                    echo $row['shipping']
                                                    ?></p>
                                        <?php endforeach ?>
                                    </div>

                                    <div class="col-sm-6 well">
                                        <h6> Billing address</h6>
                                        <hr>

                                        <?php
                                        $edit_data = $this->db->get_where('user', array('user_id' => $user_id))->result_array();
                                        foreach ($edit_data as $row):
                                            ?>
                                            <p>	<?php echo $row['username']; ?> <?php " " ?> <?php echo $row['surname']; ?></p>
                                            <p>	<?php echo $row['address1']; ?>,<?php echo $row['city']; ?>,<?php echo $row['state']; ?><?php echo $row['country']; ?></p>

                                            <p>	<?php echo $row['zip']; ?> </p>

                                            <p>	<?php echo $row['phone']; ?></p>
                                        <?php endforeach ?>
                                        <?php
                                        $edit_data = $this->db->get_where('sale', array('sale_id' => $sale_id))->result_array();
                                        foreach ($edit_data as $row):
                                            ?>
                                            <p><Strong>	<?php echo $row['payment_type']; ?></strong></p>

                                            <p><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['grand_total']; ?></p>
                                        <?php endforeach ?>
                                    </div>
                                    <div class="col-sm-4 text-center">
                                        <br/>
                                    </div>
                                    <div class="col-sm-12 well">
                                        <h6 class="text-center"> Payment Invoice</h6>
                                        <hr> 
                                        <div class="table-responsive">
                                            <table class="table ">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>item</th>
                                                        <th>Qty</th>
                                                        <th></th>
                                                        <th>Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    $carted = $this->cart->contents();
                                                    foreach ($carted as $items) {
                                                        ?>
                                                        <tr>
                                                            <td></td>
                                                            <td><?php echo $items['name']; ?></td>
                                                            <td><?php echo $items['qty']; ?></td>
                                                            <td></td>
                                                            <td><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $items['subtotal']; ?></td>
                                                        </tr>
                                                    <?php } ?>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>Shipping Charge</td>
                                                        <td><?php if ($this->crud_model->get_total() < 300) { ?> <i class="fa fa-inr" aria-hidden="true"></i> <?php
                                                                echo 20;
                                                            } else
                                                                echo "FREE";
                                                            ?></td>
                                                    </tr>

                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>Total Amount</td>
                                                        <?php
                                                        $edit_data = $this->db->get_where('sale', array('sale_id' => $sale_id))->result_array();
                                                        foreach ($edit_data as $row):
                                                            ?>
                                                            <td><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['grand_total']; ?></td>
                                                        <?php endforeach ?>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                    $this->cart->destroy();
                    $this->crud_model->clear_all();
                    ?>
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
        <script src="../../../js/jquery-1.11.3.js"></script>
        <script src="../../../js/wow.min.js"></script>
        <script src="../../../js/bootstrap.min.js"></script>
        <script src="../../../js/own-menu.js"></script>
        <script src="../../../js/owl.carousel.min.js"></script>
        <script src="../../../js/jquery.magnific-popup.min.js"></script>
        <script src="../../../js/jquery.isotope.min.js"></script>
        <script src="../../../js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="../../../rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="../../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <script src="../../../js/main.js"></script>
    </body>
</html>