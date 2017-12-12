<div class="row">
    <div class="col-md-12">
        <?php
        echo form_open(base_url() . 'index.php/admin/gallery/do_add/', array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => 'gallery_add',
            'enctype' => 'multipart/form-data'
        ));
        ?>
        <!--Panel heading-->

        <div class="panel-body">
            <div class="tab-base">
                <!--Tabs Content-->                    
                <div class="tab-content">
                    <div id="gallery_details" class="tab-pane fade active in">
                        <div class="form-group btm_border">
                            <h4 class="text-thin text-center"><?php echo translate('Images'); ?></h4>                            
                        </div>

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('title'); ?></label>
                            <div class="col-sm-6">
                                <input type="text" name="title" id="demo-hor-1" placeholder="<?php echo translate('title'); ?>" class="form-control required" autocomplete="off">
                            </div>
                        </div>                       

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-12"><?php echo translate('image'); ?></label>
                            <div class="col-sm-6">
                                <span class="pull-left btn btn-default btn-file"> <?php echo translate('choose_file'); ?>
                                    <input type="file" name="img" onchange="preview(this);" id="demo-hor-12" class="form-control required">
                                </span>
                                <br><br>
                                <span id="previewImg" ></span>
                            </div>
                        </div>
                           
                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('date'); ?></label>
                            <div class="col-sm-6">
                                <input type="date" name="date" id="demo-hor-1" class="form-control">
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
                          onclick="ajax_set_full('add', '<?php echo translate('add_images'); ?>', '<?php echo translate('successfully_added!'); ?>', 'gallery_add', '');"><?php echo translate('reset'); ?>
                    </span>
                </div>

                <div class="col-md-1">
                    <span class="btn btn-success btn-md btn-labeled fa fa-upload pull-right enterer" onclick="form_submit('gallery_add', '<?php echo translate('image_has_been_uploaded!'); ?>');proceed('to_add');" ><?php echo translate('add'); ?></span>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>

<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js">
</script>

<input type="hidden" id="option_count" value="-1">
<script type="text/javascript">
    window.preview = function (input) {
        if (input.files && input.files[0]) {
            $("#previewImg").html('');
            $(input.files).each(function () {
                var reader = new FileReader();
                reader.readAsDataURL(this);
                reader.onload = function (e) {
                    $("#previewImg").append("<div style='float:left;border:4px solid #303641;padding:5px;margin:5px;'><img height='80' src='" + e.target.result + "'></div>");
                }
            });
        }
    }

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

    function set_summer() {
        $('.summernotes').each(function () {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
            now.closest('div').append('<input type="hidden" class="val" name="' + n + '">');
            now.summernote({
                height: h,
                onChange: function () {
                    now.closest('div').find('.val').val(now.code());
                }
            });
            now.closest('div').find('.val').val(now.code());
        });
    }

    function option_count(type) {
        var count = $('#option_count').val();
        if (type == 'add') {
            count++;
        }
        if (type == 'reduce') {
            count--;
        }
        $('#option_count').val(count);
    }

    function set_select() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width: '100%'});
    }

    $(document).ready(function () {
        set_select();
        set_summer();
        createColorpickers();
    });

    function other() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width: '100%'});
        $('#sub').show('slow');
        $('#brn').show('slow');
    }
    
    function get_sub_res(id) {}

    $(".unit").on('keyup', function () {
        $(".unit_set").html($(".unit").val());
    });

    function createColorpickers() {

        $('.demo2').colorpicker({
            format: 'rgba'
        });

    }

    $('body').on('click', '.rmo', function () {
        $(this).parent().parent().remove();
    });

    function next_tab() {
        $('.nav-tabs li.active').next().find('a').click();
    }
    function previous_tab() {
        $('.nav-tabs li.active').prev().find('a').click();
    }

    $('body').on('click', '.rmon', function () {
        var co = $(this).closest('.form-group').data('no');
        $(this).parent().parent().remove();
        if ($(this).parent().parent().parent().html() == '') {
            $(this).parent().parent().parent().html(''
                    + '   <input type="hidden" name="op_set' + co + '[]" value="none" >'
                    );
        }
    });


    $('body').on('click', '.rms', function () {
        $(this).parent().parent().remove();
    });


    $("#more_color_btn").click(function () {
        $("#more_colors").append(''
                + '      <div class="col-md-12" style="margin-bottom:8px;">'
                + '          <div class="col-md-8">'
                + '              <div class="input-group demo2">'
                + '                 <input type="text" value="#ccc" name="color[]" class="form-control" />'
                + '                 <span class="input-group-addon"><i></i></span>'
                + '              </div>'
                + '          </div>'
                + '          <span class="col-md-4">'
                + '              <span class="remove_it_v rmc btn btn-danger btn-icon btn-circle icon-lg fa fa-times" ></span>'
                + '          </span>'
                + '      </div>'
                );
        createColorpickers();
    });

    $('body').on('click', '.rmc', function () {
        $(this).parent().parent().remove();
    });


    function delete_row(e)
    {
        e.parentNode.parentNode.parentNode.removeChild(e.parentNode.parentNode);
    }


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

