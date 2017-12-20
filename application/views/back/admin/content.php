<div id="content-container">
    <div id="page-title">
        <h1 class="page-header text-overflow">Content Management</h1>
    </div>

    <div class="panel-body">
        <div class="tab-base">                  
            <div class="tab-content">
                <?php
                echo form_open(base_url() . 'index.php/admin/content/', array(
                    'method' => 'post',
                    'id' => 'content_form',
                    'name' => 'content_form',
                    'enctype' => 'multipart/form-data'
                ));
                ?>

                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" style="margin-top: 40px;">Privacy Policy</label>
                    <div class="col-sm-6" style="margin-top: 20px;margin-bottom: 10px;">
                        <textarea rows="9" class="form-control" data-height="200" data-name="policy" name="privacy_policy" tabindex="1"><?php echo $content[0]['privacy_policy']; ?></textarea>
                    </div>
                </div>

                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" style="margin-top: 40px;">Terms & Condition</label>
                    <div class="col-sm-6" style="margin-top: 20px;margin-bottom: 10px;">
                        <textarea rows="9" class="form-control" data-height="200" data-name="terms" name="terms_condition" tabindex="2"><?php echo $content[0]['terms_condition']; ?></textarea>
                    </div>
                </div>

                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" style="margin-top: 40px;">About Us</label>
                    <div class="col-sm-6" style="margin-top: 20px;margin-bottom: 10px;">
                        <textarea rows="9" class="form-control" data-height="200" data-name="about_us" name="about_us" tabindex="3"><?php echo $content[0]['about_us']; ?></textarea>
                    </div>
                </div>                       

                <div class="form-group btm_border">
                    <div class="col-sm-6">
                        <button class="btn btn-primary" name="submit" type="submit" tabindex="4" style="margin-left: 400px;margin-top: 25px;">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
