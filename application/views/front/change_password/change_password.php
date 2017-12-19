<section class="sub-banner">
    <div class="container">
        <h4>CHANGE PASSWORD</h4>
        <ol class="breadcrumb">
            <li><a href="#">MY ACCOUNT</a></li>
            <li class="active">CHANGE PASSWORD</li>
        </ol>
    </div>
</section>

<section class="section-p-30px pages-in">
    <div class="container">
        <div class="shopping-cart">
            <div class="cart-ship-info">
                <div class="row">
                    <div class="col-sm-4">
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
                        <h5 style="color:#e01212;"> <?php if (isset($error_txt)) echo $error_txt; ?></h5>
                        <h5 style="color:#61c002;"> <?php if (isset($success_txt)) echo $success_txt; ?></h5>
                        <h6>Change Password</h6>
                        <hr>

                        <?php
                        echo form_open(base_url() . 'index.php/home/change_password1', array(
                            'class' => 'contact-form',
                            'method' => 'post',
                            'id' => 'contact_form',
                            'role' => 'form',
                            'enctype' => 'multipart/form-data'
                        ));
                        ?>
                        <ul class="row">
                            <li class="col-md-12">
                                <label> * CURRENT PASSWORD
                                    <input type="password" name="current_password" value="" placeholder="" required>
                                </label>
                            </li>
                            <li class="col-md-6">
                                <label> *NEW PASSWORD
                                    <input type="password" name="new_password" value="" placeholder="" required>
                                </label>
                            </li>
                            <li class="col-md-6">
                                <label> *RE-TYPE PASSWORD
                                    <input type="password" name="re_password" value="" placeholder="" required>
                                </label>
                            </li>
                            <li class="col-sm-12 no-margin">
                                <p class="red">* Required Fields</p>
                            </li>
                            <button type="submit" value="submit" class="btn" id="btn_submit">SUBMIT</button>  
                        </ul>
                        </form>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>