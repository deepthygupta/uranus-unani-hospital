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
                    <li class="col-sm-4 col-xs-4 current"> <i class="fa fa-shopping-cart"></i>
                        <h6>SHOPPING CART</h6>
                    </li>
                    <li class="col-sm-4 col-xs-4"> <i class="fa fa-align-left"></i>
                        <h6>CHECK OUT DETAIL</h6>
                    </li>
                    <li class="col-sm-4 col-xs-4"> <i class="fa fa-check"></i>
                        <h6>ORDER COMPLETE</h6>
                    </li>
                </ul>
            </div>

            <div class="shopping-cart text-center">
                <div class="cart-head">
                    <ul class="row">
                        <li class="col-sm-3 col-xs-3">
                            <h6>PRODUCTS</h6>
                        </li>
                        <li class="col-sm-3 col-xs-3">
                            <h6>NAME</h6>
                        </li>
                        <li class="col-sm-1 col-xs-3">
                            <h6>QTY</h6>
                        </li>
                        <li class="col-sm-2 col-xs-3">
                            <h6>PRICE</h6>
                        </li>
                        <li class="col-sm-2">
                            <h6>TOTAL PRICE</h6>
                        </li>
                        <li class="col-sm-1"> </li>
                    </ul>
                </div>
                <?php
                $carted = $this->cart->contents();
                foreach ($carted as $items) {
                    ?>
                    <ul class="row cart-details" data-rowid="<?php echo $items['rowid']; ?>">
                        <li class="col-sm-6 col-xs-12">
                            <div class="media">
                                <div class="media-left media-middle"> <a href="#." class="item-img"> <img class="media-object img-responsive" src="<?php echo $items['image']; ?>" alt=""> </a> </div>
                                <div class="media-body">
                                    <div class="position-center-center">
                                        <h6><?php echo $items['name']; ?></h6>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-sm-1 col-xs-12">
                            <?php
                            if (!$this->crud_model->is_digital($items['id'])) {
                                ?>
                                <div class="quantity product-quantity position-center-center">
                                    <input  type="text" class="form-control qty in_xs quantity-field quantity_field" min="1" readonly data-rowid="<?php echo $items['rowid']; ?>" data-limit='no' value="<?php echo $items['qty']; ?>" id='qty1' " />
                                </div>
                                <button type="submit" value="minus" class="btn1 quantity-button"  onClick="proceed();">-</button>
                                <button type="submit" value="plus" class="btn1 quantity-button" onClick="proceed();">+</button>  
                            <?php } ?>                                       
                        </li>
                        <li class="col-sm-2 col-xs-4">
                            <div class="position-center-center"><p>Price</p> <span><i class="fa fa-inr" aria-hidden="true"></i><?php echo $items['price']; ?></span> </div>
                        </li>
                        <li class="col-sm-2 col-xs-4">
                            <div class="position-center-center"><p>Total </p> <span class="sub_total"><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $items['subtotal']; ?>  </span> </div>
                        </li>
                        <li class="col-sm-1 col-xs-4">
                            <div class="position-center-center">
                                <span class="close"> <i class="fa fa-trash"></i></span>
                            </div>
                        </li>
                    </ul>
                <?php } ?>
                <div class="btn-sec">                                
                </div>                          
                <?php
                echo form_open(base_url() . 'index.php/home/procced_checkout', array(
                    'class' => 'form-horizontal',
                    'method' => 'post',
                    'enctype' => 'multipart/form-data'
                ));
                ?>
                <div class="cart-ship-info">
                    <div class="row">
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

                        <div class="col-sm-4">
                            <h5>SHIPPING CHARGES</h5>
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
                                        <?php echo translate('apply_coupon'); ?>	
                                </div>
                            <?php } else { ?>
                                <p>
                                    <?php echo translate('coupon_already_activated'); ?>
                                </p>
                            <?php } ?>
                        </div>

                        <div class="col-sm-4">
                            <div class="grand-total"> SUB TOTAL:<span id="total"> <?php echo $this->crud_model->get_total(); ?></span>
                                <br><br>   shipping&nbsp;&nbsp;&nbsp; :<span id="shipping">  </span>
                                <h4>GRAND : <span id="grand"></span></h4>
                                <div class="checkbox">
                                    <input id="checkbox3-1" class="styled" type="checkbox" name="check">
                                    <label for="checkbox3-1">SELECT CHECK BOX FOR GUEST LOGIN </label>
                                </div>
                                <button type="submit" value="" class="btn btn-dark">PROCEED TO CHECK OUT</button> 
                            </div>
                        </div>
                    </div>
                </div>
                </form>
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
<?php
echo form_open('', array(
    'method' => 'post',
    'id' => 'coupon_set'));
?>
<input type="hidden" id="coup_frm" name="code">
</form> 
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
<script type="text/javascript">
                            var today = new Date().toISOString().split('T')[0];
                            document.getElementsByName("date")[0].setAttribute('min', today);
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('body').on('click', '.close', function () {
            var here = $(this);
            var rowid = here.closest('ul').data('rowid');
            var thetr = here.closest('ul');
            var list1 = $('#total');
            $.ajax({
                url: base_url + 'index.php/home/cart/remove_one/' + rowid,
                beforeSend: function () {
                    list1.html('...');
                },
                success: function (data) {
                    list1.html(data).fadeIn();
                    notify(cart_product_removed, 'success', 'bottom', 'right');
                    //sound('cart_product_removed');
                    reload_header_cart();
                    others_count();
                    thetr.hide('fast');
                    if (data == 0) {
                        location.replace('<?php echo base_url(); ?>');
                    }
                },
                error: function (e) {
                    console.log(e)
                }
            });
        });

        update_calc_cart();
    });
</script>

<script>
    $(function () {
        $("#date").datepicker({minDate: 0});
    });
</script>
</body>
</html>