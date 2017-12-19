<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <h4>LOGIN OR CREATE AN ACCOUNT</h4>
        <hr>
    </div>
</section>

<div class="content ">
    <section class="conact-us conact-us-2 conact-us-3 no-padding-b">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 contact-3 animate fadeInRight" data-wow-delay="0.5s">

                    <?php if (isset($res1)) { ?>
                        <h5 style="color:#61c002;"><?php echo $res1; ?></h5>
                    <?php } else { ?>
                        <h5>Login</h5>
                    <?php } ?>
                    <p>If you have an account with us, please log in.</p>
                    <div class="contact">
                        <div class="contact-form">
                            <?php
                            echo form_open(base_url() . 'index.php/home/login_seperate', array(
                                'class' => 'contact-form',
                                'method' => 'post',
                                'id' => 'contact_form',
                                'role' => 'form',
                                'enctype' => 'multipart/form-data'
                            ));
                            ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="row">
                                        <li class="col-sm-12">
                                            <label>
                                                <input type="email" class="form-control" name="email" id="email" placeholder="*EMAIL ADDRESS" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-12">
                                            <label>
                                                <input type="password" class="form-control" name="password"  id="password" placeholder="*PASSWORD" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-12 no-margin">
                                            <p class="red">* Required Fields</p>
                                        </li>

                                        <li class="col-sm-6 no-margin">
                                            <p><a href="<?php echo base_url(); ?>index.php/home/forgot_pswd">Forgot Your Password?</a></p>
                                        </li>
                                        <li class="col-sm-6 no-margin"><span class="btn login_btn">LOGIN
                                            </span>
                                        </li>

                                    </ul>
                                </div>

                            </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 contact-3 animate fadeInRight " data-wow-delay="0.4s">
                    <h5>Sign Up</h5>
                    <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more. </p>
                    <div class="contact ">
                        <div class="contact-form">
                            <?php
                            echo form_open(base_url() . 'index.php/home/signup_separate', array(
                                'class' => 'contact-form',
                                'method' => 'post',
                                'id' => 'contact_form',
                                'role' => 'form',
                                'enctype' => 'multipart/form-data'
                            ));
                            ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="row">
                                        <li class="col-sm-6">
                                            <label>
                                                <input type="text" class="form-control" name="username" id="username" value="<?php if (isset($username)) echo $username; ?>" placeholder="*FIRST NAME" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-6">
                                            <label>
                                                <input type="text" class="form-control" name="surname" id="surname" value="<?php if (isset($surname)) echo $surname; ?>" placeholder="*LAST NAME" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-6">
                                            <label>
                                                <input type="tel" class="form-control" name="phone" id="phone" value="<?php if (isset($phone)) echo $phone; ?>" placeholder="*PHONE NO" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-6">
                                            <label>
                                                <input type="email" class="form-control" name="email" id="email" value="<?php if (isset($email)) echo $email; ?>" placeholder="*EMAIL ADDRESS" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-6">
                                            <label>
                                                <input type="password" class="form-control" name="password" id="password"  placeholder="*PASSWORD" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-6">
                                            <label>
                                                <input type="password" class="form-control" name="re-password" id="re-password" value="" placeholder="*CONFIRM PASSWORD" required>
                                            </label>
                                        </li><h6 style="color:#61c002;"><?php if (isset($res)) echo $res; ?></h6>
                                        <li class="col-sm-12">
                                            <label>
                                                <input type="text" class="form-control" name="address" id="address" value="<?php if (isset($address)) echo $address; ?>" placeholder="*ADDRESS  " required>
                                            </label>
                                        </li>
                                        <li class="col-sm-4">
                                            <label>
                                                <input type="text" class="form-control" name="city" id="city" value="<?php if (isset($city)) echo $city; ?>" placeholder="*CITY" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-4">
                                            <label>
                                                <input type="text" class="form-control" name="state" id="state"value="<?php if (isset($state)) echo $state; ?>" placeholder="*STATE" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-4">
                                            <label>
                                                <input type="text" class="form-control" name="zip" id="zip" value="<?php if (isset($zip)) echo $zip; ?>" placeholder="*PINCODE" required>
                                            </label>
                                        </li>
                                        <li class="col-sm-12 no-margin">
                                            <p class="red">* Required Fields</p>
                                        </li>
                                        <input type="hidden" name="user_id"  value="<?php if (isset($uid)) echo $uid; ?>">
                                        <input type="hidden" name="code"  value="<?php if (isset($code)) echo $code; ?>">
                                        <li class="col-sm-12 no-margin">
                                            <button type="submit" value="submit" class="btn">CREATE AN ACCOUNT</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script type='text/javascript' src='http://maps.google.com/maps/api/js?sensor=false'></script>
<script type="text/javascript">
    function initialize_map() {
        if ($('#map').length) {
            var myLatLng = new google.maps.LatLng(-37.814199, 144.961560);
            var mapOptions = {
                zoom: 17,
                center: myLatLng,
                scrollwheel: false,
                panControl: false,
                zoomControl: true,
                scaleControl: false,
                mapTypeControl: false,
                streetViewControl: false
            };
            map = new google.maps.Map(document.getElementById('map'), mapOptions);
            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                tittle: 'Envato',
                icon: './images/map-locator-1.png'
            });
        } else {
            return false;
        }
    }
    google.maps.event.addDomListener(window, 'load', initialize_map);
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