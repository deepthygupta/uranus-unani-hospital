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
