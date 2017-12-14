<?php
foreach ($faq_data as $row) {
    ?>
    <div class="row">
        <div class="col-md-12">
            <?php
            echo form_open(base_url() . 'index.php/admin/faq/update/' . $row['id'], array(
                'class' => 'form-horizontal',
                'method' => 'post',
                'id' => 'faq_edit'
            ));
            ?>
            <div class="panel-body">
                <div class="tab-base">                  
                    <div class="tab-content">
                        <div id="blog_details" class="tab-pane fade active in">
                            <div class="form-group btm_border">
                                <label class="col-sm-4 control-label"> Question </label>
                                <div class="col-sm-6">
                                    <input type="text" name="question" tabindex="1" id="demo-hor-1" value="<?php echo $row['question']; ?>" placeholder="<?php echo translate('question'); ?>" class="form-control required">
                                </div>
                            </div>                         

                            <div class="form-group btm_border">
                                <label class="col-sm-4 control-label"> <?php echo translate('answer'); ?> </label>
                                <div class="col-sm-6">
                                    <textarea rows="9" class="form-control" tabindex="2" data-height="200" data-name="summery" name="answer"><?php echo $row['answer']; ?></textarea>
                                </div>
                            </div>                                 
                        </div>
                    </div>
                </div>

            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="col-md-11">
                        <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn pull-right" 
                              onclick="ajax_set_full('edit', '<?php echo translate('edit'); ?>', '<?php echo translate('successfully_edited!'); ?>', 'faq_edit', '<?php echo $row['id']; ?>')"><?php echo translate('reset'); ?>
                        </span>
                    </div>
                    <div class="col-md-1">
                        <span class="btn btn-success btn-md btn-labeled fa fa-wrench pull-right enterer" onclick="form_submit('faq_edit', '<?php echo translate('successfully_edited!'); ?>');
                                    proceed('to_add');" ><?php echo translate('edit'); ?></span> 
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <?php
}
?>
<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script type="text/javascript">
            $('.delete-div-wrap .close').on('click', function () {
                var pid = $(this).closest('.delete-div-wrap').find('img').data('id');
                var here = $(this);
                msg = 'Really want to delete this Image?';
                bootbox.confirm(msg, function (result) {
                    if (result) {
                        $.ajax({
                            url: base_url + 'index.php/' + user_type + '/' + module + '/dlt_img/' + pid,
                            cache: false,
                            success: function (data) {
                                $.activeitNoty({
                                    type: 'success',
                                    icon: 'fa fa-check',
                                    message: 'Deleted Successfully',
                                    container: 'floating',
                                    timer: 3000
                                });
                                here.closest('.delete-div-wrap').remove();
                            }
                        });
                    } else {
                        $.activeitNoty({
                            type: 'danger',
                            icon: 'fa fa-minus',
                            message: 'Cancelled',
                            container: 'floating',
                            timer: 3000
                        });
                    }
                    ;
                });
            });

            $(document).ready(function () {
                $("form").submit(function (e) {
                    event.preventDefault();
                });
            });
</script>
<style>
    .btm_border{
        border-bottom: 1px solid #ebebeb;
        padding-bottom: 15px;	
    }
</style>

