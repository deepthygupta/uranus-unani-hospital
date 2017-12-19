<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <h4>CONTACT US</h4>                   
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">CONTACT US</li>
        </ol>
    </div>
</section>

<div class="content ">
    <section class="conact-us conact-us-2 conact-us-3 no-padding-b">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 contact-3 animate fadeInRight " data-wow-delay="0.4s">
                    <h5>GET IN TOUCH</h5>
                    <p>Please don’t hesitate to contact us if you have any questions, comments or messages. We will try to respond to everything! </p>
                    <div class="contact ">
                        <div class="contact-form">
                            <?php
                            echo form_open(base_url() . 'index.php/home/send_message', array(
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
                                                <input type="text" class="form-control" name="name" id="name" placeholder="*NAME" autocomplete="off" tabindex="1">
                                            </label>
                                        </li>
                                        <li class="col-sm-12">
                                            <label>
                                                <input type="text" class="form-control" name="email" id="email" placeholder="*EMAIL" tabindex="2" autocomplete="off">
                                            </label>
                                        </li>
                                        <li class="col-sm-12">
                                            <label>
                                                <input type="phone" class="form-control" name="phone" id="phone" placeholder="PHONE" tabindex="3" autocomplete="off">
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                                <div class="col-md-12">
                                    <ul class="row">
                                        <li class="col-sm-12">
                                            <label>
                                                <input type="text" class="form-control" name="subject" id="subject" placeholder="SUBJECT" tabindex="4" autocomplete="off">
                                            </label>
                                        </li>
                                        <li class="col-sm-12">
                                            <label>
                                                <textarea class="form-control" name="message" id="message" rows="5" placeholder="*MESSAGE"></textarea>
                                            </label>
                                        </li>

                                        <li class="col-sm-12 no-margin">
                                            <button type="submit" value="submit" class="btn" id="btn_submit" onClick="proceed();">SEND MESSAGE</button>
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

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 animate fadeInLeft" data-wow-delay="0.4s">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3914.8887769982007!2d76.12288576435402!3d11.121660742087835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba63664816bc141%3A0xe915fe8931e06a4e!2sKerala+Unani+Hospital+Manjeri!5e0!3m2!1sen!2sin!4v1513572937165" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    <ul class="social_icons">
                        <li class="facebook"><a href="#."> <i class="fa fa-facebook"></i></a></li>
                        <li class="twitter"><a href="#."> <i class="fa fa-twitter"></i></a></li>
                        <li class="googleplus"><a href="#."> <i class="fa fa-google"></i></a></li>
                        <li class="skype"><a href="#."> <i class="fa fa-skype"></i></a></li>
                        <li class="pinterest"><a href="#."> <i class="fa fa-pinterest"></i></a></li>
                        <li class="dribbble"><a href="#."> <i class="fa fa-dribbble"></i></a></li>
                        <li class="flickr"><a href="#."> <i class="fa fa-flickr"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>

    </section>
</div>
<script type="text/javascript">
        var map;
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
</script>