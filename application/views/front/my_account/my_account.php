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
                                        <input type="text" class="form-control" name="username"  value="<?php echo $row['username']; ?>" tabindex="1" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-6">
                                    <label>LAST NAME:
                                        <input type="text" class="form-control" name="surname"  value="<?php echo $row['surname']; ?>" tabindex="2" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-12">
                                    <label>EMAIL ADDRESS:
                                        <input type="email" class="form-control" name="email"  value="<?php echo $row['email']; ?>" tabindex="3" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-12">
                                    <label>PHONE:
                                        <input type="text" class="form-control" name="phone"  value="<?php echo $row['phone']; ?>" tabindex="4" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-12">
                                    <label>ADDRESS:
                                        <input type="text" class="form-control" name="address1"  value="<?php echo $row['address1']; ?>" tabindex="5" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-4">
                                    <label>CITY:
                                        <input type="text" class="form-control" name="city"  value="<?php echo $row['city']; ?>" tabindex="6" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-4">
                                    <label>STATE:
                                        <input type="text" class="form-control" name="state"  value="<?php echo $row['state']; ?>" tabindex="7" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-md-4">
                                    <label>PIN CODE:
                                        <input type="text" class="form-control" name="zip"  value="<?php echo $row['zip']; ?>" tabindex="8" autocomplete="off">
                                    </label>
                                </li>
                                <li class="col-sm-12 no-margin">
                                    <button type="submit" value="submit" class="btn btn-dark" tabindex="9">Save</button>
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
