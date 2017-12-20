<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <h4>PRIVACY POLICY</h4>                     
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">Home</a></li>
            <li class="active">PRIVACY POLICY</li>
        </ol>
    </div>
</section>
<section class="section-p-60px about-us">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="media-heading" style="text-align:justify;">
                    <p>
                        <?php
                        $this->db->select("privacy_policy");
                        $this->db->where("id", 1);
                        $content = $this->db->get('content')->result_array();
                        foreach ($content as $row) {
                            echo $row['privacy_policy'];
                        }
                        ?>
                    </p>
                    <hr>
                </div>
            </div>
        </div>
    </div>
</section>