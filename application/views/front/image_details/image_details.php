<?php
$edit_data = $this->db->get_where('product', array('product_id' => $product_id))->result_array();
foreach ($edit_data as $row):
    ?>
    <div class="content"> 
        <section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
            <div class="container">
                <h4><?php echo $row['title']; ?></h4>
                <ol class="breadcrumb">
                    <li><a href="<?php echo base_url(); ?>index.php/home/home">Home</a></li>
                    <li><a href="<?php echo base_url(); ?>index.php/home/shop">SHOP</a></li>
                    <li class="active"><?php echo $row['title']; ?></li>
                </ol>
            </div>
        </section>

        <section class="section-p-30px pages-in item-detail-page" style="margin:auto;text-align:center;">
            <div class="container">
                <div class="row"> 
                    <div class="col-sm-6 large-detail animate fadeInLeft" data-wow-delay="0.4s">
                        <div class="images-slider">
                            <ul class="slides">
                                <li data-thumb="<?php echo $this->crud_model->file_view1('product', $row['product_id'], $row['category'], '', '', 'thumb', 'src', '', ''); ?>"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view1('product', $row['product_id'], $row['category'], '', '', 'thumb', 'src', '', ''); ?>"  alt=""> </li>
                                <li data-thumb="<?php echo $this->crud_model->file_view1('product', $row['product_id'], $row['category'], '', '', 'thumb', 'src', '', ''); ?>"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view1('product', $row['product_id'], $row['category'], '', '', 'thumb', 'src', '', ''); ?>"  alt=""> </li> 
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 animate fadeInRight" data-wow-delay="0.4s">
                        <div class="row">
                            <div class="col-sm-12">
                                <h4><?php echo $row['title']; ?></h4><br/>
                                <div class="col-sm-12"> 
                                    <span class="price"><i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['sale_price']; ?> 
                                        <span class="drops black"> <i class="fa fa-tint"></i> 300ML</span>
                                    </span>
                                </div>  
                                <div class="col-sm-12">
                                    <div class="fun-share ">
                                        <br/>
                                        <?php
                                        if ($this->session->userdata('pin') == 'ok') {
                                            $pincode = 1;
                                        }
                                        echo form_open(base_url() . 'index.php/home/image_details/' . $product_id . '/' . $category, array(
                                            'class' => 'form-horizontal',
                                            'method' => 'post',
                                            'id' => 'blog_add',
                                            'enctype' => 'multipart/form-data'
                                        ));
                                        ?>

                                        <p><i class="fa fa-map-marker fa-2x" aria-hidden="true"></i>Check Availability  </p>
                                        <?php if ($pincode == 2) { ?>
                                            <input type="text" class="form-control" name="pin" id="name" placeholder="Enter Pin Code"><br/>
                                            <input type="submit" class="btn btn-dark" value="check">
                                        <?php } ?>

                                        <?php
                                        if ($pincode == 1) {
                                            $this->session->set_userdata('pin', 'ok');
                                            ?>
                                            <input type="text" class="form-control" name="pin" id="b" placeholder="Pincode is available" style="background-color:#61c002"><br/>
                                            <input type="submit" class="btn btn-dark" value="check" disabled>
                                        <?php } ?>

                                        <?php if ($pincode == 0) { ?>
                                            <input type="text" class="form-control" name="pin" id="name" placeholder="Delivery to pincode is not available" style="width:265px;background-color:#FF3C38"><br/>
                                            <input type="submit" class="btn btn-small btn-dark" value="check">
                                        <?php } ?>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 ">
                                <p>Check product delivery at your location to enable Add to Cart.</p>

                            </div>
                            <div class="col-sm-12">
                                <?php
                                switch ($pincode) {
                                    case 1:
                                        ?>
                                        <div class="fun-share"><span class="btn btn-small btn-dark" style="background-color:#61c002" onclick="to_cart(<?php echo $product_id; ?>, event);">
                                                <i class="fa fa-shopping-cart"></i>
                                                <?php
                                                if ($this->crud_model->is_added_to_cart($product_id) == "yes") {
                                                    echo translate('added_to_cart');
                                                } else {
                                                    echo translate('add_to_cart');
                                                }
                                                ?>
                                            </span><a href="<?php echo base_url(); ?>index.php/home/cart_checkout" class="btn btn-small btn-dark">Go to Cart</a>
                                        </div>
                                        <?php
                                        break;
                                    case 0:
                                        ?>

                                        <div class="fun-share"><a href="<?php echo base_url(); ?>index.php/home/view_cart/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>" class="btn btn-small btn-dark" disabled>ADD TO CART</a>
                                        </div>

                                        <?php
                                        break;
                                    default:
                                        ?>
                                        <div class="fun-share"><a href="<?php echo base_url(); ?>index.php/home/view_cart/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>" class="btn btn-small btn-dark" disabled><?php
                                                if ($this->crud_model->is_added_to_cart($product_id) == "yes") {
                                                    echo translate('added_to_cart');
                                                } else {
                                                    echo translate('add_to_cart');
                                                }
                                                ?></a>
                                        </div>
                                        <?php
                                        break;
                                }
                                ?>
                            </div>
                            <hr>
                        </div> <br><br>
                    </div>

                    <hr>
                    <h5>  <?php echo $row['ingredients']; ?> </h5>
                    <p class="justify" style="color:#000;"> <?php echo $row['description']; ?></p>
                    <hr>
                </div>
            </div>

        </section>
    </div>

    <section class="section-p-60px new-arrival new-arri-w-slide">
        <div class="container"> 
            <div class="tittle tittle-2 animate fadeInUp" data-wow-delay="0.4s">
                <h5>RELATED PRODUCTS</h5>
                <p class="font-playfair">Most haver in your Shop </p>
            </div>
            <div class="popurlar_product client-slide animate fadeInUp" data-wow-delay="0.4s"> 
                <?php
                $this->db->limit(4);
                $latest = $this->db->get_where('product', array('category' => $row['category']))->result_array();
                foreach ($latest as $row1) {
                    ?>
                    <div class="items-in"> 
                        <?php if ($row1['current_stock'] == 0 || $row1['current_stock'] == NULL) { ?>

                        <?php } else  ?>	
                        <img src="<?php echo $this->crud_model->file_view1('product', $row1['product_id'], $row1['category'], '', '', 'thumb', 'src', '', ''); ?>" alt=""> 
                        <a class="over-item" href="<?php echo base_url(); ?>index.php/home/image_details/<?php echo $row1['product_id']; ?>/<?php echo $row1['category']; ?>"></a>

                        <div class="details-sec"> <a href="#."><?php echo $row1['title']; ?></a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row1['sale_price']; ?></span> </div>
                    </div>                                          
                <?php } ?>
            </div>
        </div>
    </section>           
<?php endforeach; ?>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="<?php echo base_url(); ?>rs-plugin/js/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>rs-plugin/js/jquery.themepunch.revolution.min.js"></script> 
<script>
        $(".zoom_05").elevateZoom({
            zoomType: "inner",
            cursor: "crosshair"
        });
</script>
<style>
    #name::-webkit-input-placeholder {
        color: black;
    }
    #b::-webkit-input-placeholder {
        color: black;
    }
</style>
</body>
</html>