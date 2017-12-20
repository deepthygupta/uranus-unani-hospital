<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <h4>ABOUT US</h4>                     
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">Home</a></li>
            <li class="active">ABOUT US</li>
        </ol>
    </div>
</section>
<section class="section-p-60px about-us">
    <div class="container">
        <div class="row">
            <div class="col-md-5 animate fadeInLeft" data-wow-delay="0.4s">
                <div class="sma-hed">
                    <h5>WHY WE ARE THE BEST ?</h5>
                </div>
                <div class="media-heading" style="text-align:justify;">
                    <p>
                        <?php
                        $this->db->select("about_us");
                        $this->db->where("id", 1);
                        $content = $this->db->get('content')->result_array();
                        foreach ($content as $row) {
                            echo $row['about_us'];
                        }
                        ?>
                    </p>
                    <hr>
                </div>
            </div>
            <div class="col-md-7 animate fadeInRight img" data-wow-delay="0.4s"> <img class="img-responsive" src="<?php echo base_url(); ?>images/about-img-3.png" alt=""/>
            </div>
        </div>
    </div>
</section>

<section class="section-p-60px no-padding-t services">
    <div class="container">                      
        <div class="tittle animate fadeInUp" data-wow-delay="0.4s">
            <h5>OUR SERVICES</h5>
            <p></p>
        </div>
        <ul class="row">
            <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.4s">
                <div class="icon"><img src="<?php echo base_url(); ?>images/icons/cod.png" /></div>
                <h6>SERVICE 1</h6>
                <hr>
            </li>
            <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.6s">
                <div class="icon"><img src="<?php echo base_url(); ?>images/icons/cc.png" /></div>
                <h6>SERVICE 2</h6>
                <hr>
            </li>
            <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.4s">
                <div class="icon"><img src="<?php echo base_url(); ?>images/icons/100.png" /></div>
                <h6>SERVICE 3</h6>
                <hr>
            </li>
            <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.6s">
                <div class="icon"><img src="<?php echo base_url(); ?>images/icons/best.png" /></div>
                <h6>SERVICE 4</h6>
                <hr>
            </li>
        </ul>
    </div>
</section>
