<section class="sub-banner">
    <div class="container">
        <h4>MY ORDERS</h4>
        <ol class="breadcrumb">
            <li><a href="#">MY ACCOUNT</a></li>
            <li class="active">MY ORDERS</li>
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
                                <li><a href="<?php echo base_url(); ?>index.php/home/my_account">MY ACCOUNT </a></li>
                                <li ><a href="<?php echo base_url(); ?>index.php/home/change_password">CHANGE PASSWORD </a></li>
                                <li class="active"><a href="<?php echo base_url(); ?>index.php/home/order">MY ORDERS </a></li>
                                <li><a href="<?php echo base_url(); ?>index.php/home/logout2">LOG OUT </a></li>  
                            </ul>
                        </div>                                      
                    </div>
                    <div class="col-sm-8">
                        <h6>Orders</h6>
                        <hr>                       
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th>ORDER #</th>
                                    <th>DATE</th>
                                    <th>SHIP TO</th>
                                    <th>ORDER TOTAL</th>
                                    <th>STATUS</th>
                                    <th>  </th>
                                </tr>
                            </thead>
                            <?php
                            $uid = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->user_id;

                            $det = $this->db->get_where('sale', array('buyer' => $uid))->result_array();
                            foreach ($det as $row) {
                                ?>
                                <tbody>
                                    <tr>
                                        <td><?php echo $row['sale_code']; ?></td>
                                        <td>
                                            <?php
                                            $mysqldate = $this->db->get_where('sale', array('buyer' => $uid))->row()->sale_datetime;
                                            $phpdate = strtotime($mysqldate);
                                            $mysqldate = date('d-M-y h:i:s a', $phpdate);
                                            echo $mysqldate;
                                            ?></td>
                                        <?php
                                        $sale = $this->db->get_where('sale', array('sale_code' => $row['sale_code']))->row();
                                        $shipping_address = json_decode($sale->shipping_address, true);
                                        $delivery_status = json_decode($sale->delivery_status, true)[0];
                                        $status = $delivery_status['status'];
                                        $name = $shipping_address['firstname'];
                                        ?>
                                        <td><?php echo $name ?></td>
                                        <td><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['grand_total']; ?></td>
                                        <td><?php echo $status; ?></td>
                                    </tr>
                                </tbody>
                            <?php } ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
