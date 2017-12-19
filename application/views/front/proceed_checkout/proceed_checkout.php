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

<section class="section-p-30px pages-in chart-page">
    <div class="container">

        <!-- Payments Steps -->
        <div class="payment_steps">
            <ul class="row">
                <!-- SHOPPING CART -->
                <li class="col-sm-4"> <i class="fa fa-shopping-cart"></i>
                    <h6>SHOPPING CART</h6>
                </li>

                <!-- CHECK OUT DETAIL -->
                <li class="col-sm-4 current"> <i class="fa fa-align-left"></i>
                    <h6>CHECK OUT DETAIL</h6>
                </li>

                <!-- ORDER COMPLETE -->
                <li class="col-sm-4"> <i class="fa fa-check"></i>
                    <h6>ORDER COMPLETE</h6>
                </li>
            </ul>
        </div>

        <!-- Payments Steps -->
        <div class="shopping-cart">

            <!-- SHOPPING INFORMATION -->
            <div class="cart-ship-info">
                <div class="row">

                    <!-- ESTIMATE SHIPPING & TAX -->
                    <div class="col-sm-6">
                        <h6>LOGIN</h6><h4 style="color:#61c002;"><?php echo $res; ?></h4>
                        <p>If you have an account with us, please log in.</p>
                        <?php
                        echo form_open(base_url() . 'index.php/home/user_login', array(
                            'class' => 'form-horizontal',
                            'method' => 'post',
                            'enctype' => 'multipart/form-data'
                        ));
                        ?>
                        <ul class="row">

                            <!-- *COUNTRY -->

                            <!-- Name -->
                            <li class="col-md-12">
                                <label> *EMAIL ADDRESS
                                    <input type="email" name="email" value="" placeholder="Enter email" required>
                                </label>
                            </li>
                            <!-- LAST NAME -->
                            <li class="col-md-12">
                                <label> *PASSWORD
                                    <input type="password" name="password" value="" placeholder="Enter password" required>
                                </label>
                            </li>

                            <!-- TOWN/CITY -->
                            <li class="col-sm-12 no-margin">
                                <p class="red">* Required Fields</p>
                            </li>

                            <li class="col-sm-12 no-margin">
                                <p><a href="<?php echo base_url(); ?>index.php/home/forgot_pswd">Forgot Your Password?</a></p>
                            </li>

                            <!-- COUNTRY -->

                            <!-- POSTCODE -->


                            <!-- EMAIL ADDRESS -->

                            <!-- PHONE -->
                            <button type="submit" value="submit" class="btn btn-dark" ">LOGIN</button>

                            <!--                                        <button type="submit" name="submit" class="btn btn-small btn-dark pull-right">SUBMIT</button>-->
                            <!--                                        <input type="submit" value="LOGIN" name="submit" class="btn btn-small btn-dark pull-right">-->
                            <!--                                        <a href="#." class="btn btn-small btn-dark pull-right">LOGIN</a>-->
                            <!-- CREATE AN ACCOUNT -->


                            <!-- SHIP TO BILLING ADDRESS -->

                        </ul>
                        <input type="hidden" name="msg" value= "<?php echo $msg; ?>" >
                        <input type="hidden" name="date" value= "<?php echo $date; ?>">
                        </form>
                        <br/>


                    </div>
                    <div class="col-sm-6">
                        <!-- TITTLE -->

                        <h6>Sign Up</h6>
                        <p>By creating an account with our store. </p>
                        <div class="">
                            <div class="">
                                <!--======= FORM  =========-->
                                <?php
                                echo form_open(base_url() . 'index.php/home/user_signup', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'enctype' => 'multipart/form-data'
                                ));
                                ?>
                                <div class="row">

                                    <div class="col-md-12">
                                        <ul class="row">
                                            <li class="col-md-6">
                                                <label> *FIRST NAME
                                                    <input type="text" name="firstname" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-6">
                                                <label> *LAST NAME
                                                    <input type="text" name="surname" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-6">
                                                <label> *PHONE NO
                                                    <input type="text" name="phone" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-6">
                                                <label> *EMAIL ADDRESS
                                                    <input type="email" name="email" value="" placeholder="" required>
                                                </label>
                                            </li>

                                            <li class="col-md-6">
                                                <label> *PASSWORD
                                                    <input type="password" name="password" value="" placeholder="" required>
                                                </label>
                                            </li>

                                            <li class="col-md-6">
                                                <label> *PASSWORD CONFIRM
                                                    <input type="password" name="re_password" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-12">
                                                <label> *ADDRESS
                                                    <input type="text" name="address" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-6">
                                                <label> *CITY
                                                    <input type="text" name="city" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-6">
                                                <label> *STATE
                                                    <input type="text" name="state" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-md-6">
                                                <label> *COUNTRY
                                                    <input type="text" name="country" value="" placeholder="" required>
                                                </label>
                                            </li>


                                            <li class="col-md-6">
                                                <label> *PIN
                                                    <input type="text" name="zip" value="" placeholder="" required>
                                                </label>
                                            </li>
                                            <li class="col-sm-12 no-margin">
                                                <p class="red">* Required Fields</p>
                                            </li>


                                            <li class="col-sm-12 ">
                                                <button type="submit" value="submit" class="btn btn-dark" ">CREATE AN ACCOUNT</button>

                                                        <!--                                                            <input type="submit" value="CREATE AN ACCOUNT" name="submit" class="btn btn-small btn-dark pull-right">-->
                                                <!--                                                            <a href="#." class="btn btn-small btn-dark pull-right">CREATE AN ACCOUNT</a>-->
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- SUB TOTAL -->

                </div>
            </div>
        </div>
    </div>

    <!--======= RELATED PRODUCTS =========-->

</section>
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="../../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>