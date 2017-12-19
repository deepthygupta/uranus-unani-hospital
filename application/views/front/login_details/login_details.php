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
                <li class="col-sm-4"><i class="fa fa-shopping-cart"></i>
                    <h6>SHOPPING CART</h6>
                </li>
                <li class="col-sm-4 current"><i class="fa fa-align-left"></i>
                    <h6>CHECK OUT DETAIL</h6>
                </li>
                <li class="col-sm-4"><i class="fa fa-check"></i>
                    <h6>ORDER COMPLETE</h6>
                </li>
            </ul>
        </div>

        <div class="shopping-cart">
            <div class="cart-ship-info">
                <div class="row">
                    <div class="col-sm-6">
                        <h6>Billing Address</h6>
                        <?php
                        $edit_data = $this->db->get_where('user', array('user_id' => $user_id))->result_array();
                        foreach ($edit_data as $row):
                            ?>
                            <?php
                            echo form_open(base_url() . 'index.php/home/place_order/' . $row['user_id'], array(
                                'class' => 'form-horizontal',
                                'method' => 'post',
                                'enctype' => 'multipart/form-data'
                            ));
                            ?>
                            <ul class="row">
                                <li class="col-md-12">
                                    <label>NAME:<?php echo $row['username']; ?></label>
                                </li>
                                <li class="col-md-12">
                                    <label>LAST NAME: <?php echo $row['surname']; ?></label>
                                </li>
                                <li class="col-md-12">
                                    <label>EMAIL ADDRESS:<?php echo $row['email']; ?></label>
                                </li>
                                <li class="col-md-12">
                                    <label>ADDRESS:<?php echo $row['address1']; ?> ,<?php echo $row['city']; ?>
                                        , <?php echo $row['state']; ?></label>
                                </li>
                                <li class="col-md-12">
                                    <label>PIN CODE: <?php echo $row['zip']; ?></label>
                                </li>
                                <li class="col-md-12">
                                    <label>PHONE: <?php echo $row['phone']; ?>
                                    </label>
                                </li>
                            </ul>
                        </div>

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
                                    </div>
                                    <p>CART SUBTOTAL <span><i class="fa fa-inr" aria-hidden="true"></i><?php echo $this->crud_model->get_total(); ?></span>
                                    </p>
                                    <p>SHIPPING <span><?php if ($this->crud_model->get_total() < 300) { ?> <i class="fa fa-inr" aria-hidden="true"></i> <?php echo 20;
                                    } else echo "FREE"; ?></span></p>
                                    <p>ORDER TOTAL <span><i class="fa fa-inr" aria-hidden="true"></i> <?php if ($this->crud_model->get_total() < 300) { ?>  <?php echo $this->crud_model->shipping_total();
                                    } else echo $this->crud_model->get_total(); ?></span>
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
                                    <input type="hidden" name="msg" value= "<?php if (isset($msg)) echo $msg; ?>" >
                                    <input type="hidden" name="date" value= "<?php if (isset($date)) echo $date; ?>">
                                    <input type="hidden" name="refresh_hash" value= "<?php echo rand(100000, 999999); ?>">
                                    <button type="submit" value="submit" class="btn btn-dark">PLACE ORDER</button>   
                                </div>
                            </div>
                            </form> <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>