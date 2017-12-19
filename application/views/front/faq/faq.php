<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <h4>FAQ</h4>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">FAQ</li>
        </ol>
    </div>
</section>

<section class="section-p-30px">
    <div class="container">
        <div class="row animate fadeInUp" data-wow-delay="0.4s">
            <div class="col-md-12">
                <div class="faqs">
                    <div class="panel-group" id="accordion">

                        <?php
                        $this->db->order_by("id", "asc");
                        $this->db->where("status", "active");
                        $faq = $this->db->get('faq')->result_array();
                        foreach ($faq as $row) {
                            ?>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> <?php echo $row['question'] ?> </a> </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body"><?php echo $row['answer'] ?></div>
                                </div>
                            </div>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
