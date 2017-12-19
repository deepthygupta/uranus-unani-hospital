<div class="content">
    <section class="sub-banner">
        <div class="container">
            <h4>OUR TEAM</h4>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
                <li class="active">OUR TEAM</li>
            </ol>
        </div>
    </section>   

    <section class="our-team">
        <div class="container">
            <div class="row">     
                <div class="animate fadeInRight" data-wow-delay="0.4s"> 									
                    <ul>
                        <?php
                        $this->db->order_by("id", "desc");
                        $members = $this->db->get('team_members')->result_array();
                        foreach ($members as $row) {
                            ?>
                            <li class="col-sm-4">
                                <div class="team-img"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('team_members', $row['id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/></div>
                                <div class="team-info">  
                                    <a href="#" class="tittle-post"><?php echo $row['name']; ?></a>
                                    <p><?php echo $row['specialization']; ?></p>
                                </div>
                            </li>       
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </section>        
</div>