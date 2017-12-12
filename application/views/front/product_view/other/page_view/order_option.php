<?php
echo form_open('', array(
    'method' => 'post',
    'class' => 'sky-form',
));
?>
<h5 style="color:black;font-size:18px;font-weight:bold;"><i class="fa fa-map-marker"
                                                            style="color:black;font-size:16px;font-weight:bold;"
                                                            aria-hidden="true"></i> Check Availability:</h5>


<!--<input type="text" name="pin_code" id="formValueId" placeholder="Enter Pincode" onchange="getLocation()">-->
<!--<input type="button" id="myButton" value="CHECK" onclick="check_pin()" >-->
<!--<button name="submit" onclick="check_pin(pin_code.value)" style="border:1px solid;color:#ffffff;background-color:#3fab5d;font-size:12px;border-radius:5px;white-space:nowrap;line-height:14px;padding:8px 16px !important;margin-right: 5px;font-weight: 900;box-shadow:none;">CHECK</button>
<br><i>-->Check product delivery at your location to enable Add to Cart.</i>
or
<!--</form>-->
<input type="button"  onclick="getLocation()" value="CHECK " >

    <br><br>
<?php
function display()
{
    $location = file_get_contents('http://freegeoip.net/json/'.$_SERVER['REMOTE_ADDR']);
    print_r($location);

    $url = 'http://api.geonames.org/findNearbyPostalCodesJSON?lat='.$location['latitude'].'&lng='.$location['latitude'].'&username=kiran123';
    $obj = json_decode(file_get_contents($url), true);
    $arr= $obj['postalCodes'];
    $qwe=$arr[0];
    echo $qwe['postalCode'];
}
if(isset($_POST['submit']))
{
    display();
}
?>

<div class="order" style="background-color:#f5f6f7;width:500px">
    <div class="buttons">
        <?php
        if (!empty($all_op)) {
            foreach ($all_op as $i => $row1) {
                $type = $row1['type'];
                $name = $row1['name'];
                $title = $row1['title'];
                $option = $row1['option'];
                ?>
                <div class="options">
                    <h3 class="title"><?php echo $title . ' :'; ?></h3>
                    <div class="content">
                        <?php
                        if ($type == 'radio') {
                            ?>
                            <div class="custom_radio">
                                <?php
                                $i = 1;
                                foreach ($option as $op) {
                                    ?>
                                    <input type="radio" class="optional" name="<?php echo $name; ?>"
                                           value="<?php echo $op; ?>" <?php if ($this->crud_model->is_added_to_cart($row['product_id'], 'option', $name) == $op) {
                                        echo 'checked';
                                    } ?> id="<?php echo 'red_' . $i; ?>">
                                    <label class="radio circle" for="<?php echo 'red_' . $i; ?>">
                        <span class="big">
                          <span class="small"></span>
                        </span>
                                        <?php echo $op; ?>
                                    </label>
                                    <?php
                                    $i++;
                                }
                                ?>
                            </div>
                            <?php
                        } else if ($type == 'text') {
                            ?>
                            <label class="textarea">
                                <textarea class="optional" rows="5" cols="30"
                                          name="<?php echo $name; ?>"><?php echo $this->crud_model->is_added_to_cart($row['product_id'], 'option', $name); ?></textarea>
                            </label>
                            <?php
                        } else if ($type == 'single_select') {
                            ?>
                            <label class="select">
                                <select name="<?php echo $name; ?>" class="optional selectpicker input-price"
                                        data-live-search="true">
                                    <option value=""><?php echo translate('choose_one'); ?></option>
                                    <?php
                                    foreach ($option as $op) {
                                        ?>
                                        <option value="<?php echo $op; ?>" <?php if ($this->crud_model->is_added_to_cart($row['product_id'], 'option', $name) == $op) {
                                            echo 'selected';
                                        } ?> ><?php echo $op; ?></option>
                                        <?php
                                    }
                                    ?>
                                </select>
                                <i></i>
                            </label>
                            <?php
                        } else if ($type == 'multi_select') {
                            ?>
                            <div class="checkbox">
                                <?php
                                $j = 1;
                                foreach ($option as $op) {
                                    ?>
                                    <label for="<?php echo 'check_' . $j; ?>" onClick="check(this)">
                                        <input type="checkbox" id="<?php echo 'check_' . $j; ?>" class="optional"
                                               name="<?php echo $name; ?>[]"
                                               value="<?php echo $op; ?>" <?php if (!is_array($chk = $this->crud_model->is_added_to_cart($row['product_id'], 'option', $name))) {
                                            $chk = array();
                                        }
                                        if (in_array($op, $chk)) {
                                            echo 'checked';
                                        } ?>>
                                        <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
                                        <?php echo $op; ?>
                                    </label>
                                    <?php
                                    $j++;
                                }
                                ?>
                            </div>

                            <?php
                        }
                        ?>

                    </div>

                </div>


                <?php
            }
        }
        ?>

        <h5> 500ml</h5>

        <script type="text/javascript">
            $(".form_datetime").datetimepicker({format: 'yyyy-mm-dd hh:ii'});
        </script>
        <div class="item_count">
            <div class="quantity product-quantity">
                    <span class="btn" name='subtract' onclick='decrease_val();'>
                        <i class="fa fa-minus"></i>
                    </span>
                <input  type="number" class="form-control qty quantity-field cart_quantity" min="1" max="<?php echo $row['current_stock']; ?>" name='qty' value="<?php if($a = $this->crud_model->is_added_to_cart($row['product_id'],'qty')){echo $a;} else {echo '1';} ?>" id='qty'/>
                <span class="btn" name='add' onclick='increase_val();'>
                        <i class="fa fa-plus">
                    </i></span>
            </div>
            <?php
            if ($row['current_stock'] > 0) {
                ?>
                <div class="stock">
                    <?php echo $row['current_stock'] . ' ' . $row['unit'] . translate('_available'); ?>
                </div>
                <?php
            } else {
                ?>
                <div class="out_of_stock">
                    <?php echo translate('out_of_stock'); ?>
                </div>
                <?php
            }
            ?>
        </div>

        <div class="iteamenu">
            <h6> Apple <i class="fa fa-plus"></i> Green <i class="fa fa-plus"></i> Orange </h6>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim a</p>
        </div>

    </div>
</div>
<div class="buttons" style="display:inline-flex;">
        <span class="btn btn-add-to cart" onclick="to_cart(<?php echo $row['product_id']; ?>,event)">
            <i class="fa fa-shopping-cart"></i>
            <?php if ($this->crud_model->is_added_to_cart($row['product_id']) == "yes") {
                echo translate('added_to_cart');
            } else {
                echo translate('add_to_cart');
            }
            ?>
        </span>
    <?php
    $wish = $this->crud_model->is_wished($row['product_id']);
    ?>
    <span class="btn btn-add-to <?php if ($wish == 'yes') {
        echo 'wished';
    } else {
        echo 'wishlist';
    } ?>" onclick="to_wishlist(<?php echo $row['product_id']; ?>,event)">
            <i class="fa fa-heart"></i>
            <span class="hidden-sm hidden-xs">
				<?php if ($wish == 'yes') {
                    echo translate('_added_to_wishlist');
                } else {
                    echo translate('_add_to_wishlist');
                }
                ?>
            </span>
        </span>


</div>
</form>
<div id="pnopoi"></div>

<hr class="page-divider small"/>
<script>
    $(document).ready(function() {
        $name = myCookie('name', null);
        if ($name) $('#name').val($name);
    });


    $(document).ready(function () {
        $('#share').share({
            networks: ['facebook', 'googleplus', 'twitter', 'linkedin', 'tumblr', 'in1', 'stumbleupon', 'digg'],
            theme: 'square'
        });
    });
</script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    function check_pin() {
        var input = document.getElementById('formValueId'),
         pin = input.value;
        $.ajax({
            type: "POST",
            url: <?php echo base_url(); ?>+'index.php/home/availability_check/',
            data: "pin_code="+ pin,
            done: function(msg){
                if(msg == 'available')
                {
                    notify(pin_available,'success','bottom','right');
                }
                else
                {
                    notify(pin_unavailable,'warning','bottom','right');
                }

            }
            error: function(e) {
                alert("error");
            }

        });
    }
    $(document).ready(function () {
        check_checkbox();
    });
    function check_checkbox() {
        $('.checkbox input[type="checkbox"]').each(function () {
            if ($(this).prop('checked') == true) {
                $(this).closest('label').find('.cr-icon').addClass('add');
            } else {
                $(this).closest('label').find('.cr-icon').addClass('remove');
            }
        });
    }
    function check(now) {
        if ($(now).find('input[type="checkbox"]').prop('checked') == true) {
            $(now).find('.cr-icon').removeClass('remove');
            $(now).find('.cr-icon').addClass('add');
        } else {
            $(now).find('.cr-icon').removeClass('add');
            $(now).find('.cr-icon').addClass('remove');
        }
    }
    function decrease_val() {
        var value = $('.quantity-field').val();
        if (value > 1) {
            var value = --value;
        }
        $('.quantity-field').val(value);
    }
    function increase_val() {
        var value = $('.quantity-field').val();
        var max_val = parseInt($('.quantity-field').attr('max'));
        if (value < max_val) {
            var value = ++value;
        }
        $('.quantity-field').val(value);
    }
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            alert("error");
        }
    }
    function showPosition(position) {
        $.ajax({
            url: "get_zip.php",
            type: 'POST',
            data: {latitude:position.coords.latitude,longitude:position.coords.longitude}
        }).success(function(response) {
            alert(response)
        }).error(function(response) {
            alert(response)
        });
    }
</script>