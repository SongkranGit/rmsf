<?php $this->load->view("includes/admin/header"); ?>
<?php $this->load->view("includes/admin/navbar"); ?>
<link href="<?= base_url("assets/libraries/jquery-filer/css/jquery.filer.css") ?>" type="text/css" rel="stylesheet">
<link href="<?= base_url("assets/libraries/jquery-filer/css/themes/jquery.filer-dragdropbox-theme.css") ?>" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?= base_url("assets/libraries/jquery-filer/js/jquery.filer.min.js?v=1.0.5") ?>"></script>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <span><?= $this->lang->line("pages_title_information"); ?></span>
        </h1>
        <div class="group-buttons-right">
            <ul class="nav nav-pills">
                <li>
                    <a href="<?= base_url(ADMIN_PAGE) ?>"> <i class="fa fa-list"></i><?= $this->lang->line("pages_list_of_pages"); ?></a>
                </li>
            </ul>
        </div>
    </section>

    <section class="content">
        <form id="form_page_entry" role="form" class="form-horizontal">
            <div class="panel panel-default">
                <div class="panel-heading <?php echo ($data["action"] === "create") ? "heading-create" : "heading-update"; ?>">
                <span>
                    <i class="<?php echo ($data["action"] === "create") ? "fa fa-plus-circle " : "fa fa-edit"; ?>"></i>
                    <?= $data["heading_text"] ?>
                </span>
                </div>

                <div class="panel-body">
                    <div class="form-group required">
                        <label class="col-md-2  control-label"><?= $this->lang->line("name"); ?></label>
                        <div class="col-md-8">
                            <div class="col-md-5 row">
                                <input type='text' class="form-control" name="page_name" value="<?php echo setFormData($data, $key = "page_name") ?>"/>
                            </div>
                            <div class="col-md-5">
                                <label class="control-label text-red" for="email">Please input english text only</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("content"); ?></label>
                        <div class="col-md-8">
                            <ul class="nav nav-tabs">
                                <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" data-toggle="tab">ไทย</a></li>
                                <li role="presentation"><a href="#tab2" aria-controls="tab2" data-toggle="tab">English</a></li>
                            </ul>
                            <div class="tab-content">
                                <!--TAB Thai-->
                                <div class="tab-pane active" id="tab1">
                                    <br>
                                    <div class="form-group required ">
                                        <label class="col-md-12 label-required "><?= $this->lang->line("pages_title"); ?></label>
                                        <div class="col-md-12">
                                            <input type="text" id="name_th" name="name_th" placeholder="ชื่อเว็บเพจ" class="form-control"
                                                   value="<?php echo setFormData($data, $key = "name_th"); ?>">
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-12 label-required" for="detail_th"><?= $this->lang->line("detail"); ?></label>
                                        <div class="col-md-12 ">
                                            <textarea name="detail_th" id="detail_th" class="form-control"
                                                      rows="5"><?php echo setFormData($data, $key = "detail_th"); ?></textarea>
                                        </div>
                                    </div>
                                </div>
                                <!--TAB Eng-->
                                <div class="tab-pane fade" id="tab2">
                                    <br>
                                    <div class="form-group required ">
                                        <label class="col-md-12 label-required"><?= $this->lang->line("pages_title"); ?></label>
                                        <div class="col-md-12">
                                            <input type="text" id="name_en" name="name_en" placeholder="Page Title" class="form-control"
                                                   value="<?php echo setFormData($data, $key = "name_en"); ?>">
                                        </div>

                                    </div>

                                    <div class="form-group required">
                                        <label class="col-md-12 label-required" for="detail_en"><?= $this->lang->line("detail"); ?></label>
                                        <div class="col-md-12">
                                            <textarea name="detail_en" id="detail_en" class="form-control"
                                                      rows="5"><?php echo setFormData($data, $key = "detail_en"); ?></textarea>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                    <?php if (isset($data['action']) && $data['action'] != ACTION_CREATE): ?>

                        <!--Articles-->
                        <?php if (isset($data['articles']) && count($data['articles']) > 0): ?>
                            <div id="div_article_list" class="form-group">
                                <label class="col-md-2 control-label"><?= $this->lang->line("article_title"); ?></label>
                                <div class="col-md-8">
                                    <table class=" table table-bordered">
                                        <thead>
                                        <tr style="background-color: #30bbbb; color: white">
                                            <th class="text-center" width="60"><?= $this->lang->line("table_seq"); ?></th>
                                            <th width="32%"><?= $this->lang->line("article_name"); ?> (ไทย)</th>
                                            <th width="32%"><?= $this->lang->line("article_name"); ?> (English)</th>
                                            <th width="32%"><?= $this->lang->line("table_created_date"); ?></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        $articles = $data['articles'];
                                        foreach ($articles as $key => $value): ?>
                                            <tr>
                                                <td><?= $key + 1; ?></td>
                                                <td><?= $value['name_th'] ?></td>
                                                <td><?= $value['name_en'] ?></td>
                                                <td><?= $value['created_date'] ?></td>
                                            </tr>
                                        <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        <?php endif; ?>

                        <!--Galleries-->
                        <?php if (isset($data['galleries']) && count($data['galleries']) > 0): ?>
                            <div id="div_gallery_list" class="form-group">
                                <label class="col-md-2 control-label"><?= $this->lang->line("gallery_title"); ?></label>
                                <div class="col-md-8">
                                    <table class=" table table-bordered">
                                        <thead>
                                        <tr style="background-color: #9ad717; color: white">
                                            <th class="text-center" width="60"><?= $this->lang->line("table_seq"); ?></th>
                                            <th width="32%"><?= $this->lang->line("gallery_name"); ?> (ไทย)</th>
                                            <th width="32%"><?= $this->lang->line("gallery_name"); ?> (English)</th>
                                            <th width="32%"><?= $this->lang->line("table_created_date"); ?></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        $galleries = $data['galleries'];
                                        foreach ($galleries as $key => $value): ?>
                                            <tr>
                                                <td><?= $key + 1; ?></td>
                                                <td><?= $value['name_th'] ?></td>
                                                <td><?= $value['name_en'] ?></td>
                                                <td><?= $value['created_date'] ?></td>
                                            </tr>
                                        <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        <?php endif; ?>

                    <?php endif; ?>

                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("menu_icon"); ?></label>
                        <div class="col-md-8">
                            <input class="form-control" type="file" name="menu_icon" id="menu_icon"
                                   value="<?= (isset($data["row"]["menu_icon"]) ? $data["row"]["menu_icon"] : "") ?>">
                            <div id="div_image">
                                <?php if (isset($data['row']['menu_icon'])): ?>
                                    <div class="jFiler-items jFiler-row">
                                        <ul class="jFiler-items-list jFiler-items-grid">
                                            <li class="jFiler-item">
                                                <div class="jFiler-item-container">
                                                    <div class="jFiler-item-inner">
                                                        <div class="jFiler-item-thumb" style="width:100%">
                                                            <img src="<?= isset($data["row"]["menu_icon"]) ? base_url("uploads/menu_icon/" . $data["row"]["menu_icon"]) : "" ?>">
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="col-md-2 control-label text-right"><?= $this->lang->line("form_field_published"); ?></label>
                        <div class="col-md-2">
                            <select class="form-control" id="published" name="published">
                                <option value="1" <?= isset($data["row"]["published"]) && $data["row"]["published"] == 1 ? "selected" : "" ?>>
                                    <?= $this->lang->line("form_field_published"); ?></option>
                                <option value="0" <?= isset($data["row"]["published"]) && $data["row"]["published"] == 0 ? "selected" : "" ?>>
                                    <?= $this->lang->line("form_field_unpublished"); ?></option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <div class="pull-right">
                        <?= buttonSubmitCreateOrUpdate($data["action"]); ?>
                        <?= buttonCancelWithRedirectPage("admin/Page/index"); ?>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <!--Hidden Fields-->
            <input type="hidden" id="hd_is_show_article" name="is_show_article">
            <input type="hidden" id="hd_is_show_gallery" name="is_show_gallery">
        </form>
    </section>

</div><!-- /.content-wrapper -->

<script type="text/javascript">
    var validator;

    $(document).ready(function () {

        initView();

        setupTinyFileManager();

        setupFileInput();

        validateForm();

    });

    function initView() {
        $("input:file").change(function () {
            $('#div_image').hide();
        });
    }

    function setupTinyFileManager() {
        var external_filemanager_path = '<?=base_url("assets")?>/libraries/filemanager/';
        var filemanager = '<?=base_url("assets/libraries/filemanager/plugin.min.js")?>';
        tinymce.init({
            selector: "textarea", theme: "modern", height: 200,
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
                "table contextmenu directionality emoticons paste textcolor responsivefilemanager code fullscreen"
            ],
            toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
            toolbar2: "| responsivefilemanager | link unlink anchor | image media | forecolor backcolor  | print preview code | fullscreen",
            image_advtab: true,
            external_filemanager_path: external_filemanager_path,
            filemanager_title: "Responsive Filemanager",
            external_plugins: {"filemanager": filemanager}
        });
    }

    function validateForm() {
        //Fixed not validate hidden tabs
        $.validator.setDefaults({
            ignore: ""
        });
        validator = $('#form_page_entry').validate({
            rules: {
                name_th: "required",
                name_en: "required",
                page_name: {
                    required: true,
                    letterEnglishOnly: true
                }
            },
            messages: {
                page_name: '<?php echo $this->lang->line("message_this_field_is_require");?>',
                name_th: '<?php echo $this->lang->line("message_this_field_is_require");?>',
                name_en: {
                    required: '<?php echo $this->lang->line("message_this_field_is_require");?>'
                }

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
        var targetUrl;
        var id = '<?=$this->uri->segment(4)?>';

        if (id === "") {
            targetUrl = BASE_URL + 'admin/Page/create';
        } else {
            targetUrl = BASE_URL + 'admin/Page/update/' + id;
        }

        showSpinner();

        $.ajax({
            type: 'POST',
            url: targetUrl,
            data: $("#form_page_entry").serializefiles(),
            dataType: 'json',
            processData: false,
            contentType: false,
            success: function (response) {
                hideSpinner();
                if (response.success == true) {
                    alertSuccessMessageDialog(
                        '<?=$this->lang->line("message_dialog_title_success");?>',
                        '<?=$this->lang->line("message_save_complete");?>', function () {
                            window.location = BASE_URL + 'admin/Page';
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


    function clearForm() {
        validator.resetForm();
        $('#form_page_entry')[0].reset();
    }

    function setupFileInput() {
        $('#menu_icon').filer({
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

</script>

<?php $this->load->view("includes/admin/footer"); ?>

