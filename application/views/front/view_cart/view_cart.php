<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Raw Squeezed || Cart</title>
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
        <div class="position-center-center"> <img src="../../images/preloader.gif" alt="">
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
                        <!--  6t
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
                            <a href="<?php echo base_url(); ?>index.php/home/blog">
                                <?php echo translate('BLOG & NEWS');?>
                            </a>
                        </li>
                        <!--======= MEGA MENU =========-->


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
                        <li class="col-sm-4 col-xs-4 current"> <i class="fa fa-shopping-cart"></i>
                            <h6>SHOPPING CART</h6>
                        </li>

                        <!-- CHECK OUT DETAIL -->
                        <li class="col-sm-4 col-xs-4"> <i class="fa fa-align-left"></i>
                            <h6>CHECK OUT DETAIL</h6>
                        </li>

                        <!-- ORDER COMPLETE -->
                        <li class="col-sm-4 col-xs-4"> <i class="fa fa-check"></i>
                            <h6>ORDER COMPLETE</h6>
                        </li>
                    </ul>
                </div>

                <!-- Payments Steps -->
                <div class="shopping-cart text-center">
                    <div class="cart-head">
                        <ul class="row">
                            <!-- PRODUCTS -->
                            <li class="col-sm-3 col-xs-3">
                                <h6>PRODUCTS</h6>
                            </li>
                            <!-- NAME -->
                            <li class="col-sm-3 col-xs-3">
                                <h6>NAME</h6>
                            </li>
                            <!-- QTY -->
                            <li class="col-sm-1 col-xs-3">
                                <h6>QTY</h6>
                            </li>
                            <!-- PRICE -->
                            <li class="col-sm-2 col-xs-3">
                                <h6>PRICE</h6>
                            </li>
                            <!-- TOTAL PRICE -->
                            <li class="col-sm-2">
                                <h6>TOTAL PRICE</h6>
                            </li>
                            <li class="col-sm-1"> </li>
                        </ul>
                    </div>
                    <?php
                    $carted = $this->cart->contents();
                    foreach ($carted as $items){
                        ?>
                        <!-- Cart Details -->
                        <ul class="row cart-details" data-rowid="<?php echo $items['rowid']; ?>">
                            <li class="col-sm-6 col-xs-12">
                                <div class="media">
                                    <!-- Media Image -->
                                    <div class="media-left media-middle"> <a href="#." class="item-img"> <img class="media-object img-responsive" src="<?php echo $items['image']; ?>" alt=""> </a> </div>

                                    <!-- Item Name -->

                                    <div class="media-body">
                                        <div class="position-center-center">
                                            <h6><?php echo $items['name']; ?></h6>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!-- QTY -->
                            <li class="col-sm-1 col-xs-12">

                                <?php
                                if(!$this->crud_model->is_digital($items['id'])){
                                    ?>
                                    <div class="quantity product-quantity position-center-center">
                                        <input  type="text" class="form-control qty in_xs quantity-field quantity_field" min="1" readonly data-rowid="<?php echo $items['rowid']; ?>" data-limit='no' value="<?php echo $items['qty']; ?>" id='qty1' " />
                                    </div>
                                    <button type="submit" value="minus" class="btn1 quantity-button"  onClick="proceed();">-</button>
                                    <button type="submit" value="plus" class="btn1 quantity-button" onClick="proceed();">+</button>

                                    <!--                    <span class="buttons">-->
                                    <!--                        <button type='button' class="btn in_xs quantity-button plus" value='plus'>-->
                                    <!--                            <i class="fa fa-plus-circle " aria-hidden="true"></i>-->
                                    <!--                        </button>-->
                                    <!--                        <div class="quantity product-quantity">-->
                                    <!--                            <input  type="text" class="form-control qty in_xs quantity-field quantity_field" min="1" readonly data-rowid="--><?php //echo $items['rowid']; ?><!--" data-limit='no' value="--><?php //echo $items['qty']; ?><!--" id='qty1' " />-->
                                    <!--                        </div>-->
                                    <!--                        <button type='button' class="btn in_xs quantity-button minus" value='minus'>-->
                                    <!--                            <i class="fa fa-minus-circle" aria-hidden="true"></i>-->
                                    <!--                        </button>-->
                                    <!--                    </span>-->

                                    <?php
                                }
                                ?>
                                <!--              <div class="position-center-center">-->
                                <!--                <input type="text" value="02">-->
                                <!--              </div>-->
                            </li>

                            <!-- PRICE -->
                            <li class="col-sm-2 col-xs-4">
                                <div class="position-center-center"><p>Price</p> <span><i class="fa fa-inr" aria-hidden="true"></i><?php echo $items['price']; ?></span> </div>
                            </li>
                            <!-- TOTAL PRICE -->
                            <li class="col-sm-2 col-xs-4">
                                <div class="position-center-center"><p>Total </p> <span class="sub_total"><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $items['subtotal']; ?>  </span> </div>
                            </li>

                            <!-- EDIT AND REMOVE -->
                            <li class="col-sm-1 col-xs-4">
                                <div class="position-center-center">
                                    <span class="close"> <i class="fa fa-trash"></i></span>
                                </div>
                            </li>
                        </ul>
                    <?php } ?>
                    <!-- Cart Details -->


                    <!-- BTN INFO -->
                    <div class="btn-sec">

                        <!-- CLEAR SHOPPING CART -->
                        <!--            <a href="#." class="btn btn-dark"> <i class="fa fa-trash-o"></i> CLEAR SHOPPING CART </a> -->

                        <!-- UPDATE SHOPPING CART -->


                        <!-- CONTINUE SHOPPING -->
                        <!--            <a href="--><?php //echo base_url(); ?><!--index.php/home/shop" class="btn btn-dark right-btn"> <i class="fa fa-shopping-cart"></i> CONTINUE SHOPPING </a>-->
                    </div>

                    <!-- SHOPPING INFORMATION -->
                    <?php
                    echo form_open(base_url() . 'index.php/home/procced_checkout', array(
                        'class' => 'form-horizontal',
                        'method' => 'post',
                        'enctype' => 'multipart/form-data'
                    ));
                    ?>
                    <div class="cart-ship-info">
                        <div class="row">

                            <!-- DISCOUNT CODE -->
                            <div class="col-sm-4">
                                <h5>Special Instructions For Seller</h5>
                                <form>

                                    <div class="">
                                        <textarea name="message" id="message" class="form-control" rows="4" placeholder="Enter your message"></textarea>


                                        <br/>
                                        <h5>*Pick a delivery date:</h5>

                                        <input type="date" class="form-control" name="date" id="date" placeholder="">
                                        <p>Delivery from Monday - Saturday.</p>
                                    </div>
                                </form>
                            </div>

                            <!-- ESTIMATE SHIPPING & TAX -->
                            <div class="col-sm-4">
                                <h5>SHIPPING CHARGES</h5>

                                <!-- *COUNTRY -->
                                <label>*Purchase for Rs 300/- Above and get Free Shipping</label>
                                <label>*Shipping Charge of Rs 20/- for below Rs 300/-</label>
                                <label>*Shipping Time : 8am - 8pm</label>
                                <?php if ($this->cart->total_discount() <= 0 && $this->session->userdata('couponer') !== 'done' && $this->cart->get_coupon() == 0) { ?>
                                    <h5>
                                        <?php echo translate('enter_your_coupon_code_if_you_have_one'); ?>.
                                    </h5>
                                    <div class="form-group col-sm-12">
                                        <input type="text" class="form-control coupon_code" placeholder="Enter your coupon code" name="code"> </div>
                                    <div
                                            class="btn btn-dark btn-theme btn-block coupon_btn">
                                        <?php echo translate('apply_coupon'); ?>	</div>


                                <?php } else { ?>
                                    <p>
                                        <?php echo translate('coupon_already_activated'); ?>
                                    </p>
                                <?php } ?>


                            </div>

                            <!-- SUB TOTAL -->
                            <div class="col-sm-4">
                                <div class="grand-total"> SUB TOTAL:<span id="total"> <?php echo $this->crud_model->get_total(); ?></span>
                                    <br><br>   shipping&nbsp;&nbsp;&nbsp; :<span id="shipping">  </span>
                                    <h4>GRAND : <span id="grand"></span></h4>




                                    <div class="checkbox">
                                        <input id="checkbox3-1" class="styled" type="checkbox" name="check">
                                        <label for="checkbox3-1">SELECT CHECK BOX FOR GUEST LOGIN </label>
                                    </div>
                                    <!--<input type="submit" value="PROCEED TO CHECK OUT">-->
                                    <button type="submit" value="" class="btn btn-dark">PROCEED TO CHECK OUT</button>

                                    <!--                            <a href="--><?php //echo base_url(); ?><!--index.php/home/proceed_checkout" class="btn">PROCEED TO CHECK OUT</a>-->
                                </div>
                            </div>

                        </div>
                    </div></form>
                </div>
            </div>

            <!--======= RELATED PRODUCTS =========-->

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

<?php
echo form_open('', array(
    'method' =>'post',
    'id' => 'coupon_set' ));
?>
<input type="hidden" id="coup_frm" name="code">
</form>
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

<script type="text/javascript">
    var today = new Date().toISOString().split('T')[0];
    document.getElementsByName("date")[0].setAttribute('min', today);
</script>
<script type="text/javascript">
    $( document ).ready(function() {
        $('body').on('click','.close', function(){
            var here = $(this);
            var rowid = here.closest('ul').data('rowid');
            var thetr = here.closest('ul');
            var list1 = $('#total');
            $.ajax({
                url: base_url+'index.php/home/cart/remove_one/'+rowid,
                beforeSend: function() {
                    list1.html('...');
                },
                success: function(data) {
                    list1.html(data).fadeIn();
                    notify(cart_product_removed,'success','bottom','right');
                    //sound('cart_product_removed');
                    reload_header_cart();
                    others_count();
                    thetr.hide('fast');
                    if(data == 0){
                        location.replace('<?php echo base_url();?>');
                    }
                },
                error: function(e) {
                    console.log(e)
                }
            });
        });

        update_calc_cart();
    });
</script>

<script>
    $(function() {
        $( "#date" ).datepicker({ minDate: 0});
    });
</script>
</body>
</html>