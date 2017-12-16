<div class="row">
    <div class="col-md-12">
        <?php
        echo form_open(base_url() . 'index.php/admin/faq/do_add/', array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => 'faq_add'
        ));
        ?>
        <div class="panel-body">
            <div class="tab-base">                 
                <div class="tab-content">
                    <div id="faq_details" class="tab-pane fade active in">
                        <div class="form-group btm_border">
                            <h4 class="text-thin text-center">FAQ</h4>                            
                        </div>

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label"><?php echo translate('question'); ?></label>
                            <div class="col-sm-6">
                                <input type="text" name="question" id="demo-hor-1" placeholder="<?php echo translate('question'); ?>" class="form-control required" tabindex="1" autocomplete="off">
                            </div>
                        </div>                       

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label"><?php echo translate('answer'); ?></label>
                            <div class="col-sm-6">
                                <textarea rows="9" class="form-control" data-height="200" data-name="summery" name="answer" tabindex="2"></textarea>
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
                          onclick="ajax_set_full('add', '<?php echo translate('add_faq'); ?>', '<?php echo translate('successfully_added!'); ?>', 'faq_add', '');"><?php echo translate('reset'); ?>
                    </span>
                </div>

                <div class="col-md-1">
                    <span class="btn btn-success btn-md btn-labeled fa fa-upload pull-right enterer" onclick="form_submit('faq_add', '<?php echo translate('faq_added!'); ?>'); proceed('to_add');" >Add</span>
                </div>

            </div>
        </div>

        </form>
    </div>
</div>

<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js">
</script>

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
            return false;
        });
    });
</script>
<style>
    .btm_border{
        border-bottom: 1px solid #ebebeb;
        padding-bottom: 15px;   
    }
</style>

<!--Bootstrap Tags Input [ OPTIONAL ]-->

