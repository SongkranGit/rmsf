<?php $this->load->view("includes/admin/header"); ?>
<?php $this->load->view("includes/admin/navbar"); ?>

<link href="<?= base_url("assets/libraries/jquery-filer/css/jquery.filer.css") ?>" type="text/css" rel="stylesheet">
<link href="<?= base_url("assets/libraries/jquery-filer/css/themes/jquery.filer-dragdropbox-theme.css") ?>" type="text/css" rel="stylesheet">
<link href="<?= base_url("assets/libraries/dropzone/min/dropzone.min.css") ?>" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?= base_url("assets/libraries/jquery-filer/js/jquery.filer.min.js?v=1.0.5") ?>"></script>
<script type="text/javascript" src="<?= base_url("assets/libraries/dropzone/min/dropzone.min.js") ?>"></script>

<style>
    .dropzone {
        background: #fff;
        border: 2px dashed #ddd;
    }
</style>

<div class="content-wrapper">

    <section class="content-header">
        <h1>
            <span><?= $this->lang->line("gallery_upload"); ?></span>
        </h1>
        <div class="group-buttons-right">
            <ul class="nav nav-pills">
                <li>
                    <a href="<?= base_url(ADMIN_GALLERY_UPLOAD.'/uploadList/'.$this->uri->segment(4)) ?>"> <i class="fa fa-list"></i><?= $this->lang->line("gallery_upload_list"); ?></a>
                </li>
            </ul>
        </div>
    </section>

    <section class="content">
        <form id="form_upload_image" role="form" class="form-horizontal">
            <div class="panel panel-default">
                <div
                        class="panel-heading <?php echo ($data["action"] === "create") ? "heading-create" : "heading-update"; ?>">
                    <span>
                        <i class="<?php echo ($data["action"] === "create") ? "fa fa-plus-circle " : "fa fa-edit"; ?>"></i>
                        <?= $data["heading_text"] ?>
                    </span>
                </div>

                <div class="panel-body">
                    <div class="form-group  ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("gallery_title"); ?></label>
                        <div class="col-md-8">
                            <input id="txt_gallery_name" type="text" class="form-control" value="<?=(isEnglishLang())?$data["gallery"]['name_en']:$data["gallery"]['name_th']?>" disabled  >
                        </div>
                    </div>


                    <div id="div_cbx_allow_image_detail" class="form-group">
                        <label class="col-md-2 control-label"><?= $this->lang->line("caption"); ?></label>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-2 col-sm-6">
                                    <input type="checkbox" id="cbx_allow_image_detail" name="allow_image_detail">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="is_multiple_upload" value="true">
                    </div>

                    <div id="div_upload_image_only">
                        <div class="form-group ">
                            <label class="col-md-2  control-label"><?= $this->lang->line("upload_image"); ?></label>
                            <div class="col-md-8">
                                <div id="dZUpload" class="dropzone">
                                    <div class="dz-default dz-message"></div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="is_upload_image_only" value="true"/>
                        <input type="hidden" id="hd_list_image_uuid" name="list_image_uuid"/>
                    </div>

                    <div id="div_upload_image_with_description">
                        <div class="form-group required ">
                            <label class="col-md-2  control-label"><?= $this->lang->line("gallery_image"); ?></label>
                            <div class="col-md-8">
                                <input class="form-control" type="file" name="user_files" id="filer_input"
                                       multiple="multiple"
                                       value="<?= (isset($data["row"]["file_name"]) ? $data["row"]["file_name"] : "") ?>">
                                <div id="div_image">
                                    <?php if($data["action"]=="update"): ?>
                                        <div class="jFiler-items jFiler-row">
                                            <ul class="jFiler-items-list jFiler-items-grid">
                                                <li class="jFiler-item">
                                                    <div class="jFiler-item-container">
                                                        <div class="jFiler-item-inner">
                                                            <div class="jFiler-item-thumb" style="width:100%">
                                                                <img src="<?=isset($data["row"]["file_name"]) ? base_url("uploads/gallery/".$data["row"]["gallery_id"] ."/". $data["row"]["file_name"]) : ""?>">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    <?php endif;?>
                                </div>
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
                                        <br>
                                        <textarea name="caption" id="caption" class="form-control"
                                                  rows="3"><?php echo setFormData($data , $key="caption_th") ?></textarea>
                                    </div>
                                    <div class="tab-pane fade" id="tab2">
                                        <br>
                                        <textarea name="caption" id="caption" class="form-control"
                                                  rows="3"><?php echo setFormData($data , $key="caption_en") ?></textarea>
                                    </div>
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
                        <?= buttonSubmitCreateOrUpdate($data["action"]); ?>
                        <?= buttonCancelWithRedirectPage(ADMIN_GALLERY_UPLOAD.'/uploadList/'.$this->uri->segment(4)); ?>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </form>
    </section>


</div><!-- /.content-wrapper -->

<script type="text/javascript">
    var form_action = '<?=$data["action"]?>';
    $(document).ready(function () {

        initView();

        validateForm();

        setupFileInput();

        setupTinyFileManager();

        setupToggleAllowImageDetail();

        setupDropzone();

    });


    function initView() {
        $("#gallery_id").change(function () {
            clearDropzonePreivewImage();
        });

        var gallery_id = '<?php echo $this->uri->segment(4)?>';
        if (gallery_id != null && gallery_id != '') {
            $('#div_cbx_allow_image_detail').hide();
            $('#div_upload_image_only').hide();
            $('#div_upload_image_with_description').show();
        } else {
            $('#div_upload_image_only').show();
            $('#div_upload_image_with_description').hide();
        }

        $("input:file").change(function () {
            $('#div_image').hide();
        });
    }

    function setupToggleAllowImageDetail() {
        $("#cbx_allow_image_detail").bootstrapSwitch('state', false);
        $('#cbx_allow_image_detail').on('switchChange.bootstrapSwitch', function (event, state) {
            if (state) {
                $('#div_upload_image_with_description').show();
                $('#div_upload_image_only').hide();
            } else {
                $('#div_upload_image_with_description').hide();
                $('#div_upload_image_only').show();
            }
            clearDropzonePreivewImage();
        });
    }

    function setupTinyFileManager() {
        var external_filemanager_path = '<?=base_url("assets")?>/libraries/filemanager/';
        var filemanager = '<?=base_url("assets/libraries/filemanager/plugin.min.js")?>';
        tinymce.init({
            selector: "#description", theme: "modern", height: 300,
            relative_urls: false,
            remove_script_host: false,
            convert_urls: true,
            setup: function (editor) {
                editor.on('change', function () {
                    editor.save();
                });
            },
            plugins: [
                "advlist autolink link image lists charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking",
                "table contextmenu directionality emoticons paste textcolor responsivefilemanager code"
            ],
            toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
            toolbar2: "| responsivefilemanager | link unlink anchor | image media | forecolor backcolor  | print preview code ",
            image_advtab: true,
            external_filemanager_path: external_filemanager_path,
            filemanager_title: "Responsive Filemanager",
            external_plugins: {"filemanager": filemanager}
        });
    }

    function setupFileInput() {
        $('#filer_input').filer({
            limit: null,
            maxSize: null,
            extensions: null,
            extensions: ['jpg', 'jpeg', 'png'],
            changeInput: true,
            showThumbs: true,
            captions: {button: 'Browse', feedback: ''},
            addMore: false,
            templates: {
                box: '<ul class="jFiler-items-list jFiler-items-grid"></ul>',
                item: '<li class="jFiler-item">\
                        <div class="jFiler-item-container">\
                            <div class="jFiler-item-inner">\
                                <div class="jFiler-item-thumb">\
                                    <div class="jFiler-item-status"></div>\
                                    <div class="jFiler-item-info">\
                                        <span class="jFiler-item-title"><b title="{{fi-name}}">{{fi-name | limitTo: 25}}</b></span>\
                                        <span class="jFiler-item-others">{{fi-size2}}</span>\
                                    </div>\
                                    {{fi-image}}\
                                </div>\
                                <div class="jFiler-item-assets jFiler-row">\
                                    <ul class="list-inline pull-left">\
                                        <li>{{fi-progressBar}}</li>\
                                    </ul>\
                                    <ul class="list-inline pull-right">\
                                        <li><a class="icon-jfi-trash jFiler-item-trash-action"></a></li>\
                                    </ul>\
                                </div>\
                            </div>\
                        </div>\
                    </li>',
                itemAppend: '<li class="jFiler-item">\
                            <div class="jFiler-item-container">\
                                <div class="jFiler-item-inner">\
                                    <div class="jFiler-item-thumb">\
                                        <div class="jFiler-item-status"></div>\
                                        <div class="jFiler-item-info">\
                                            <span class="jFiler-item-title"><b title="{{fi-name}}">{{fi-name | limitTo: 25}}</b></span>\
                                            <span class="jFiler-item-others">{{fi-size2}}</span>\
                                        </div>\
                                       \
                                    </div>\
                                    <div class="jFiler-item-assets jFiler-row">\
                                        <ul class="list-inline pull-left">\
                                            <li><span class="jFiler-item-others">{{fi-icon}}</span></li>\
                                        </ul>\
                                        <ul class="list-inline pull-right">\
                                            <li><a class="icon-jfi-trash jFiler-item-trash-action"></a></li>\
                                        </ul>\
                                    </div>\
                                </div>\
                            </div>\
                        </li>',
                progressBar: '<div class="bar"></div>',
                itemAppendToEnd: false,
                removeConfirmation: true,
                _selectors: {
                    list: '.jFiler-items-list',
                    item: '.jFiler-item',
                    progressBar: '.bar',
                    remove: '.jFiler-item-trash-action'
                }
            }
        });
    }

    function validateForm() {
        var validator = $('#form_upload_image').validate({
            rules: {
//                description_th: "required",
//                description_en: "required"
            },
            messages: {
                'user_files[]': '<?php echo $this->lang->line("message_this_field_is_require");?>',
                description_en: '<?php echo $this->lang->line("message_this_field_is_require");?>',
                description_th: '<?php echo $this->lang->line("message_this_field_is_require");?>'
            },
            highlight: function (element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            },
            submitHandler: function (form) {
                save();
            }
        });
    }


    function save() {

        if (!validate()) {
            return;
        }

        var gallery_id = '<?=$this->uri->segment(4)?>';
        var gallery_image_id = '<?=$this->uri->segment(5)?>'
        var targetUrl;
        var action = '<?=$this->uri->segment(3)?>';
        if (action === "upload") {
            targetUrl = BASE_URL + 'admin/GalleryImage/create';
        } else {
            targetUrl = BASE_URL + 'admin/GalleryImage/update/' + gallery_id + '/' + gallery_image_id;
        }


        showSpinner();
        $.ajax({
            type: 'POST',
            url: targetUrl,
            data: $("#form_upload_image").serializefiles(),
            dataType: 'json',
            processData: false,
            contentType: false,
            success: function (response) {
                hideSpinner();
                if (response.success == true) {
                    alertSuccessMessageDialog(
                        '<?=$this->lang->line("message_dialog_title_success");?>',
                        '<?=$this->lang->line("message_save_complete");?>', function () {
                            var action = '<?=$this->uri->segment(3)?>';
                            if (action === "editImage") {
                                window.location = BASE_URL + 'admin/GalleryImage/uploadList/'+gallery_id;
                            } else {
                                clearForm();
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
                clearForm();
                alert(request.responseText);
            }
        });
    }

    function validate() {

        if($('#cbx_allow_image_detail').bootstrapSwitch('state') == true){
            if ($('#filer_input').val() == '') {
                alertWarningMessageDialog('คำเตือน', 'กรุณาเลือกไฟล์รูปภาพ', null)
                return false;
            }

            if($('#caption').val()==''){
                alertWarningMessageDialog('คำเตือน', 'กรุณากรอกข้อมูลคำบรรยายภาพ', null)
                return false;
            }

            if($('#description').val()==''){
                alertWarningMessageDialog('คำเตือน', 'กรุณากรอกข้อมูลรายละเอียด', null)
                return false;
            }
        }
        return true;
    }


    function clearForm() {
        var gallery_id = '<?=$this->uri->segment(4)?>';
        if (gallery_id != null && gallery_id != '') {
            window.location = BASE_URL + 'admin/GalleryImage/upload/' + gallery_id;
        } else {
            window.location = BASE_URL + 'admin/GalleryImage/upload';
        }
    }

    function setupDropzone() {
        Dropzone.autoDiscover = false;
        var fileList = new Array();
        var listSelectedFile = new Array();
        var i = 0;
        var targetUrl = "<?php echo base_url("admin/GalleryImage/uploadImageWithDropzone")?>";
        var myDropzone = $("#dZUpload").dropzone({
            url: targetUrl,
            addRemoveLinks: true,
            RemoveLinkTemplate: "<div class=\"btn btn-default\" data-dz-remove><i class=\"icon-cross\"></i></div>",
            init: function () {
                var thisDropzone = this;

                if($('#cbx_allow_image_detail').is(":visible")){
                    var gallery_id = '<?= isset($data["gallery_id"]) ? $data["gallery_id"] : "" ?>';
                    if (gallery_id != '') {
                        $.getJSON('<?= base_url("admin/GalleryImage/getImagesByGalleryId")?>' + '/' + gallery_id, function (data) {
                            $.each(data, function (index, val) {
                                var mockFile = {name: val.image_name, size: val.size};
                                thisDropzone.createThumbnailFromUrl(mockFile, BASE_URL + "uploads/gallery/" + val.image_name);
                                thisDropzone.options.addedfile.call(thisDropzone, mockFile);
                                thisDropzone.options.thumbnail.call(thisDropzone, mockFile, BASE_URL + "uploads/gallery/" + val.image_name);
                                mockFile.previewElement.classList.add('dz-success');
                                mockFile.previewElement.classList.add('dz-complete');

                                // Add file from server to list
                                fileList[i] = {"serverFileName": val.image_name, "fileName": val.image_name, "fileId": i};
                                i++;
                            });
                        });
                    }
                }
            },
            removedfile: function (file) {
                var rmvFile = "";
                for (var f = 0; f < fileList.length; f++) {
                    if (fileList[f].fileName == file.name) {
                        rmvFile = fileList[f].serverFileName;
                    }
                }

                $.ajax({
                    type: "post",
                    url: "<?php echo base_url("admin/GalleryImage/deleteImage")?>" + '/' + $('#gallery_id').val(),
                    data: {file: rmvFile},
                    dataType: 'html'
                });

                listSelectedFile.remove(rmvFile);
                $('#hd_list_image_uuid').val(listSelectedFile.join(", "));

                var _ref;
                return (_ref = file.previewElement) != null ? _ref.parentNode.removeChild(file.previewElement) : void 0;
            },
            sending: function (file, xhr, formData) {
                formData.append('gallery_id', $('#gallery_id').val());
            },
            success: function (file, response) {
                var responseObject = JSON.parse(response);
                fileList[i] = {"serverFileName": responseObject.serverFileName, "fileName": file.name, "fileId": i};
                listSelectedFile.push(responseObject.image_uuid);
                $('#hd_list_image_uuid').val(listSelectedFile.join(", "));
                i++;

                // Rename after upload
                var elFileName = file.previewElement.querySelector("[data-dz-name]");
                elFileName.innerHTML = responseObject.serverFileName;
                // console.log(responseObject);
                return file.previewElement.classList.add("dz-success");
            },
            error: function (file, response) {
                file.previewElement.classList.add("dz-error");
            }
        });

        //Sort images
        myDropzone.sortable({
            items: '.dz-preview',
            cursor: 'move',
            opacity: 0.5,
            containment: '#dZUpload',
            distance: 20,
            tolerance: 'pointer',
            stop: function () {
                var listOfFileNames = new Array();
                $('#dZUpload .dz-preview .dz-filename [data-dz-name]').each(function (count, el) {
                    var name = el.innerHTML;
                    var remove_extension = name.replace(/\.[^/.]+$/, "");
                    listOfFileNames.push(remove_extension.trim())
                    //console.log(listOfFileNames);
                });

                $('#hd_list_image_uuid').val(listOfFileNames.join(", "));
                //console.log(listOfFileNames);
            }
        });

        $('div.dz-preview .dz-size').hide();
    }

    function clearDropzonePreivewImage() {
        $('div.dz-success').remove();
        $('#hd_list_image_uuid').val('');
    }


</script>

<?php $this->load->view("includes/admin/footer"); ?>

