<section class="sub-banner">
    <div class="container">
        <h4>BLOG</h4>
        <ol class="breadcrumb">
            <li><a href=<?php echo base_url(); ?>index.php>Home</a></li>
            <li class="active">BLOG</li>
        </ol>
    </div>
</section>
<section class="section-p-30px blog-page">
    <div class="container">
        <div class="row">     
            <div class="col-sm-9 animate fadeInRight" data-wow-delay="0.4s">                                
                <?php
                if (isset($_GET["id"])) {
                    $id = $_GET['id'];
                    $this->db->limit(5);
                    $this->db->order_by("blog_id", "desc");
                    $this->db->where("blog_category", $id);
                    $blogs = $this->db->get('blog')->result_array();
                    foreach ($blogs as $row) {
                        ?>
                        <div class="blog-posts medium-images">
                            <ul>
                                <li class="animate fadeInUp" data-wow-delay="0.4s">
                                    <div class="row"> 
                                        <div class="col-sm-5"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('blog', $row['blog_id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                        </div>
                                        <div class="col-sm-7"> <span class="tags "><?php echo $this->db->get_where('blog_category', array('blog_category_id' => $row['blog_category']))->row()->name; ?>
                                            </span> <a href="<?php echo base_url(); ?>index.php/home/blog_details/<?php echo $row['blog_id']; ?>" class="tittle-post"><?php echo $row['title'] ?></a>
                                            <p><?php echo substr($row['summery'], 0, 500); ?></p>   
                                            <ul class="info">
                                                <li><i class="fa fa-user"></i> <?php echo $row['author'] ?></li>
                                                <li><i class="fa fa-calendar-o"></i><?php echo $row['date']; ?></li>

                                            </ul>
                                            <a class="btn btn-small btn-dark" href="<?php echo base_url(); ?>index.php/home/blog_details/<?php echo $row['blog_id']; ?>">READ MORE</a>
                                        </div>
                                    </div>
                                </li>     
                            </ul>
                        </div>
                        <?php
                    }
                } else {
                    ?>

                    <?php
                    $this->db->limit(5);
                    $this->db->order_by("blog_id", "desc");
                    $blogs = $this->db->get('blog')->result_array();
                    foreach ($blogs as $row) {
                        ?>
                        <div class="blog-posts medium-images">
                            <ul>
                                <li class="animate fadeInUp" data-wow-delay="0.4s">
                                    <div class="row">
                                        <div class="col-sm-5"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('blog', $row['blog_id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                        </div>
                                        <div class="col-sm-7"> <span class="tags"><?php echo $this->db->get_where('blog_category', array('blog_category_id' => $row['blog_category']))->row()->name; ?>
                                            </span> <a href="#." class="tittle-post"><?php echo $row['title'] ?>   </a>
                                            <p><?php echo substr($row['summery'], 0, 500); ?></p>
                                            <ul class="info">
                                                <li><i class="fa fa-user"></i> <?php echo $row['author'] ?></li>
                                                <li><i class="fa fa-calendar-o"></i><?php echo $row['date']; ?></li>
                                            </ul>
                                            <a class="btn btn-small btn-dark" href="<?php echo base_url(); ?>index.php/home/blog_details/<?php echo $row['blog_id']; ?>">READ MORE</a>
                                        </div>
                                    </div>
                                </li>    
                            </ul>
                        </div>
                        <?php
                    }
                }
                ?>                               
            </div>
        </div>
    </div>
</section>