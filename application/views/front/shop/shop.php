<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <?php
        if (isset($_GET["id"])) {
            $id = $_GET['id'];
            $this->db->where("category_id", $id);
            $latest = $this->db->get('category')->result_array();
            foreach ($latest as $row) {
                ?>
                <h4><?php echo $row['category_name']; ?></h4>
            <?php
            }
        } else {
            ?>
            <h4>ALL SERVICES</h4>
<?php } ?>                       
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">Services</li>
        </ol>
    </div>
</section>

<section class="section-p-30px pages-in">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 animate fadeInLeft" data-wow-delay="0.2s">
                <div class="side-bar">
                    <h4>Filter by</h4>
                    <div class="heading">
                        <h6>CATEGORIES</h6>
                    </div>

                    <ul class="cate">
                        <?php
                        $category = $this->db->get('category')->result_array();
                        foreach ($category as $row) {
                            ?>
                            <li><a href="?id=<?php echo $row['category_id'] ?>"><?php echo $row['category_name'] ?> </a></li>
<?php } ?>
                    </ul>
                    <div class="heading">
                        <h6>INGREDIENTS</h6>
                    </div>
                    <?php
                    $id = $this->input->get('id');
                    ?>
                    <br>
                    <ul class="tags">
                        <li><a href="?id=<?php echo $id ?>&inc=APPLE">APPLE</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=ORANGE">ORANGE</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=GINGER">GINGER</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=WATERMELON">WATERMELON</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=POMEGRANATE">POMEGRANATE</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=GARLIC">GARLIC</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=LEMON">LEMON</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=PARSLEY">PARSLEY</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=COCONUT">TENDER COCONUT</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=TURMERIC">TURMERIC</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=KIWI">KIWI</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=CARROT">CARROT</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=CUCUMBER">CUCUMBER</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=PINEAPPLE">PINEAPPLE</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=MINT">MINT</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=CELERY">CELERY</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=GREEN">GREEN APPLE</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=BABY">BABY SPINACH</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=SPINACH">SPINACH</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=KALE">KALE</a></li>
                        <li><a href="?id=<?php echo $id ?>&inc=BEETROOT">BEETROOT</a></li>
                    </ul>    
                </div>
            </div>

            <div class="col-sm-9 animate fadeInUp" data-wow-delay="0.2s">
                <div class="items-short-type animate fadeInUp" data-wow-delay="0.4s">  
                </div>

                <div id="clean">
                    <div class="popurlar_product">
                        <ul class="row">
                            <?php
                            $id = $this->input->get('id');
                            $ingredient_name = trim($this->input->get('inc'));
                            $this->db->limit(11);
                            $filter = true;
                            if ($id != '')
                                $this->db->where("category", $id);
                            $latest = $this->db->get('product')->result_array();
                            foreach ($latest as $row) {
                                if (!empty($ingredient_name)) {
                                    $filter = strpos(strtolower(trim($row['ingredients'])), strtolower($ingredient_name)) !== false;
                                }
                                if ($filter) {
                                    ?>
                                    <li class="col-sm-4 animate fadeIn" data-wow-delay="0.4s">
                                        <div class="items-in">
                                            <a href="<?php echo $this->crud_model->blog_link($row['product_id']); ?>">
                                                <img  src="<?php echo $this->crud_model->file_view1('product', $row['product_id'], $row['category'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                            </a>

                                            <a class="over-item" href="<?php echo base_url(); ?>index.php/home/image_details/<?php echo $row['product_id']; ?>/<?php echo $row['category']; ?>"></a>

                                            <div class="details-sec"> <a href="#."><?php echo $row['title'] ?></a> <span class="font-montserrat"> <i class="fa fa-inr" aria-hidden="true"></i> <?php echo $row['sale_price'] ?></span> </div>
                                        </div>
                                    </li>
                                <?php
                                }
                            }
                            ?>                                            
                    </div>
                </div>
            </div>
        </div>
</section>

<script>
    jQuery(document).ready(function ($) {
        $("#price-range").noUiSlider({
            range: {
                'min': [0],
                'max': [1000]
            },
            start: [40, 940],
            connect: true,
            serialization: {
                lower: [
                    $.Link({
                        target: $("#price-min")
                    })
                ],
                upper: [
                    $.Link({
                        target: $("#price-max")
                    })
                ],
                format: {
                    decimals: 2,
                    prefix: '$'
                }
            }
        })
    })

</script>