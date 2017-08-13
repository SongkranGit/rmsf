<?php $this->load->view("includes/admin/header"); ?>
<?php $this->load->view("includes/admin/navbar"); ?>
<!--Extra Script-->
<link href="<?= base_url("assets/libraries/jquery-filer/css/jquery.filer.css") ?>" type="text/css" rel="stylesheet">
<link href="<?= base_url("assets/libraries/jquery-filer/css/themes/jquery.filer-dragdropbox-theme.css") ?>" type="text/css" rel="stylesheet">

<script type="text/javascript" src="<?= base_url("assets/libraries/jquery-filer/js/jquery.filer.min.js?v=1.0.5") ?>"></script>
<link href="<?= base_url("assets/libraries/cropper/cropper.min.css") ?>" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?= base_url("assets/libraries/cropper/cropper.min.js") ?>"></script>
<style>
    .img-container,
    .img-preview {
        background-color: #f7f7f7;
        width: 100%;
        text-align: center;
    }

    /* .img-container {
         min-height: 200px;
         max-height: 516px;
         margin-bottom: 20px;
     }*/

    @media (min-width: 768px) {
        .img-container {
            min-height: 316px;
        }
    }

    .img-container > img {
        max-width: 100%;
    }

    /* Content */

    .img-container,
    .img-preview {
        background-color: #f7f7f7;
        width: 100%;
        text-align: center;
    }

    /*.preview-lg {
        width: 263px;
        height: 148px;
    }*/

    .img-container {
        min-height: 200px;
        max-height: 316px;
        margin-bottom: 10px;
    }

    @media (min-width: 768px) {
        .img-container {
            min-height: 316px;
        }
    }

    .img-container > img {
        width: 100%;
    }

    .img-container {
        width: 100%;
    }

    .img-preview {
        float: left;
        /*margin-right: 10px;*/
        /*margin-bottom: 10px;*/
        overflow: hidden;
    }

    .img-preview > img {
        max-width: 100%;
    }


</style>
<?php

$form_action = $data['action'];
$slide_show_id = $this->uri->segment(4);
$upload_slideshow_path = base_url('uploads/slideshow');

?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            <span><?= $this->lang->line("slideshow_title"); ?></span>
        </h1>
        <div class="group-buttons-right">
            <ul class="nav nav-pills">
                <li>
                    <a href="<?= base_url(ADMIN_SLIDE_SHOW) ?>"> <i class="fa fa-list"></i><?= $this->lang->line("slideshow_list"); ?></a>
                </li>
            </ul>
        </div>
    </section>

    <section class="content">
        <form id="form_slideshow_entry" role="form" class="form-horizontal">
            <div class="panel panel-default">
                <div
                        class="panel-heading <?php echo ($data["action"] === "create") ? "heading-create" : "heading-update"; ?>">
                    <span>
                        <i class="<?php echo ($data["action"] === "create") ? "fa fa-plus-circle " : "fa fa-edit"; ?>"></i>
                        <?= $data["heading_text"] ?>
                    </span>
                </div>

                <div class="panel-body">
                    <div class="form-group required ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("slideshow_image"); ?></label>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="img-container">
                                        <img id="image">
                                    </div>
                                    <span style="font-size: 12px;color: red"><em>รูปควรมีขนาดความกว้างและความสูงมากกว่า 1900 x 1080 และขนาดภาพต้องไม่เกิน 4 MB</em></span>
                                    <label class="btn btn-primary btn-upload pull-right" for="inputImage"
                                           title="Upload image file">
                                        <input type="file" class="sr-only" id="inputImage" name="user_files" accept="image/*">
                                        <span class="docs-tooltip" data-toggle="tooltip" title="เลือกรูป">
                                       <span class="fa fa-upload"> เลือกรูป</span>
                                   </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2  control-label"></label>
                        <div class="col-md-8">
                            <div class="img-preview text-center"></div>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("caption"); ?></label>
                        <div class="col-md-8">
                            <ul class="nav nav-tabs">
                                <li role="presentation" class="active"><a href="#tab1" data-toggle="tab">Thai</a></li>
                                <li role="presentation"><a href="#tab2" data-toggle="tab">English</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab1">
                                    <textarea name="caption_th" id="caption_th" class="form-control" rows="3"><?php echo setFormData($data, $key = "caption_th") ?></textarea>
                                </div>
                                <div class="tab-pane fade" id="tab2">
                                    <textarea name="caption_en" id="caption_en" class="form-control" rows="3"><?php echo setFormData($data, $key = "caption_en") ?></textarea>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="col-md-2 control-label"><?= $this->lang->line("form_field_published"); ?></label>
                        <div class="col-md-2">
                            <select class="form-control" id="published" name="published">
                                <option
                                        value="1" <?= isset($data["row"]["published"]) && $data["row"]["published"] == 1 ? "selected" : "" ?>>
                                    <?= $this->lang->line("form_field_published"); ?></option>
                                <option
                                        value="0" <?= isset($data["row"]["published"]) && $data["row"]["published"] == 0 ? "selected" : "" ?>>
                                    <?= $this->lang->line("form_field_unpublished"); ?></option>
                            </select>
                        </div>
                    </div>

                </div>
                <div class="panel-footer">
                    <div class="pull-right">
                        <?= buttonSubmitCreateOrUpdate($data["action"], $is_submit_type = false); ?>
                        <?= buttonCancelWithRedirectPage("admin/Slideshow"); ?>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <input type="hidden" id="isBrowseFileImage">
            <input type="hidden" id="image_file_type">
        </form>
    </section>

</div><!-- /.content-wrapper -->
<script>

    $(document).ready(function () {

        initCropper();

        initView();

        setupTinyMCE();

    });

    function initView() {
        var id = '<?=$slide_show_id?>';
        if (id != '') {
            var file_name = '<?= isset($data["row"]["file_name"]) ? $data["row"]["file_name"] : ""; ?>';
            var img = document.createElement("IMG");
            img.src = '<?=$upload_slideshow_path?>' + "/" + file_name;
            $('.img-preview').html(img);

        }

        $('form').submit(function () {
            $(this).find(':submit').attr('disabled', 'disabled');
        });
    }

    function setupTinyMCE() {
        tinymce.init({
            selector: 'textarea',
            height: 100,
            menubar: false,
            relative_urls: false,
            remove_script_host: false,
            convert_urls: true,
            setup: function (editor) {
                editor.on('change', function () {
                    editor.save();
                });
                if ($('#' + editor.id).attr('readonly'))
                    editor.settings.readonly = true;
            },
            plugins: [
                'advlist autolink lists link image charmap print preview anchor',
                'searchreplace visualblocks code fullscreen',
                'insertdatetime media table contextmenu paste code textcolor colorpicker'
            ],
            toolbar: 'undo redo | insert | styleselect | bold italic | forecolor backcolor fontsizeselect | alignleft aligncenter alignright alignjustify | outdent indent | preview code',
            fontsize_formats: '8pt 10pt 12pt 14pt 18pt 24pt 36pt',
        });
    }

    function initCropper() {
        var console = window.console || {
                log: function () {
                }
            };
        var $previews = $('.img-preview');
        var $image = $('#image');
        var $dataX = $('#dataX');
        var $dataY = $('#dataY');
        var $dataHeight = $('#dataHeight');
        var $dataWidth = $('#dataWidth');
        var $dataRotate = $('#dataRotate');
        var $dataScaleX = $('#dataScaleX');
        var $dataScaleY = $('#dataScaleY');
        var options = {
            viewMode: 1,
            doubleClickToggle: false,
            aspectRatio: 16 / 6,
            dragMode: 'move',
            autoCropArea: 1,
            restore: false,
            guides: false,
            highlight: true,
            cropBoxMovable: false,
            cropBoxResizable: false,
            preview: '.img-preview',
            build: function (e) {
                var $clone = $(this).clone();

                $clone.css({
                    display: 'block',
                    width: '100%',
                    minWidth: 0,
                    minHeight: 0,
                    maxWidth: 'none',
                    maxHeight: 'none'
                });

                $previews.css({
                    width: '100%',
                    overflow: 'hidden',
                    borderStyle: 'solid',
                    borderWidth: 1
                }).html($clone);

            },
            crop: function (e) {
                $dataX.val(Math.round(e.x));
                $dataY.val(Math.round(e.y));
                $dataHeight.val(Math.round(e.height));
                $dataWidth.val(Math.round(e.width));
                $dataRotate.val(e.rotate);
                $dataScaleX.val(e.scaleX);
                $dataScaleY.val(e.scaleY);
                var imageData = $(this).cropper('getImageData');
                var previewAspectRatio = e.width / e.height;

                $previews.each(function () {
                    var $preview = $(this);
                    var previewWidth = $preview.width();
                    var previewHeight = previewWidth / previewAspectRatio;
                    var imageScaledRatio = e.width / previewWidth;

                    $preview.height(previewHeight).find('img').css({
                        width: '100%',
                        // width: imageData.naturalWidth / imageScaledRatio,
                        height: imageData.naturalHeight / imageScaledRatio,
                        marginLeft: -e.x / imageScaledRatio,
                        marginTop: -e.y / imageScaledRatio
                    });
                });
            }
        };

        // Cropper
        $image.cropper(options);

        // Import image
        var $inputImage = $('#inputImage');
        var URL = window.URL || window.webkitURL;
        var blobURL;

        if (URL) {
            $inputImage.change(function () {
                var files = this.files;
                var file;

                if (!$image.data('cropper')) {
                    return;
                }

                if (files && files.length) {
                    file = files[0];

                    /**========= Checking File size ========*/
                    if (file.size > 4194304) {
                        alert('กรุณาเลือกขนาดไฟล์น้อยกว่า 4 MB');
                        return;
                    }

                    var file, img;
                    if ((file = this.files[0])) {
                        img = new Image();
//                        img.onload = function () {
//                            if (this.width < 1900) {
//                                alert('ความกว้างของรูปไม่ควรน้อยกว่า 1900 px');
//                                return;
//                            }
//                            if (this.height < 1080) {
//                                alert('ความสูงของรูปไม่ควรน้อยกว่า 1080 px');
//                                return;
//                            }
//                        };
                        img.src = URL.createObjectURL(file);
                    }


                    /** ===============  SET File To server =============*/
                    $('#isBrowseFileImage').val(true);
                    /** ===============  SET UP File =============*/

                    if (/^image\/\w+$/.test(file.type)) {
                        blobURL = URL.createObjectURL(file);
                        $image.one('built.cropper', function () {

                            // Revoke when load complete
                            URL.revokeObjectURL(blobURL);
                        }).cropper('reset').cropper('replace', blobURL);
                        $inputImage.val('');
                    } else {
                        window.alert('Please choose an image file.');
                    }
                }
            });
        } else {
            $inputImage.prop('disabled', true).parent().addClass('disabled');
        }
    }

    function save() {

        if (!validateForm()) {
            alertWarningMessageDialog('คำเตือน', 'กรุณาเลือกไฟล์รูปภาพ', null)
            return;
        }

        var isBrowseFileImage = Boolean($('#isBrowseFileImage').val());
        if (isBrowseFileImage == true) {
            var canvas = $('#image').cropper('getCroppedCanvas');
            var dataURL = canvas.toDataURL('image/jpeg');
            var data = {
                caption_th: $('#caption_th').val(),
                caption_en: $('#caption_en').val(),
                published: $("#published option:selected").val(),
                imageBase64: dataURL
            }

            submitForm(data);
        } else {
            $('#isBrowseFileImage').val(false);
            var data = {
                caption_th: $('#caption_th').val(),
                caption_en: $('#caption_en').val(),
                published: $("#published option:selected").val()
            }
            submitForm(data);
        }

    }

    function submitForm(data) {
        var id = '<?=$slide_show_id?>';
        var targetUrl;
        if (id === "") {
            targetUrl = BASE_URL + 'admin/Slideshow/create';
        } else {
            targetUrl = BASE_URL + 'admin/Slideshow/update/' + id;
        }
        showSpinner();
        $.ajax({
            type: 'POST',
            url: targetUrl,
            data: data,
            dataType: 'json',
            success: function (response) {
                hideSpinner();
                if (response.success == true) {
                    alertSuccessMessageDialog(
                        '<?=$this->lang->line("message_dialog_title_success");?>',
                        '<?=$this->lang->line("message_save_complete");?>', function () {
                            var id = '<?=$this->uri->segment(4)?>';
                            if (id != 0 && id != '') {
                                window.location = BASE_URL + 'admin/Slideshow/index';
                            } else {
                                window.location.reload();
                            }
                        });
                } else {
                    $.each(response.messages, function (key, value) {
                        var element = $('#' + key);
                        element.closest('div.form-group')
                            .removeClass('has-error')
                            .addClass(value.length > 0 ? 'has-error' : 'has-success')
                            .find('.text-danger')
                            .remove();

                        element.after(value);
                    });
                }
            },
            error: function (request, status, error) {
                hideSpinner();
                alert(request.responseText);
            }
        });
    }

    function validateForm() {
        if ($('.img-preview').children().length > 0) {
            return true;
        }
        return false;
    }


</script>


<?php $this->load->view("includes/admin/footer"); ?>

