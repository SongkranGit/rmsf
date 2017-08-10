<?php $this->load->view("includes/admin/header"); ?>
<?php $this->load->view("includes/admin/navbar"); ?>

<div class="content-wrapper">
    <!-- Content Header (article header) -->
    <section class="content-header">
        <h1>
            <span><?= $this->lang->line("article_list"); ?></span>
        </h1>
        <div class="group-buttons-right">
            <ul class="nav nav-pills">
                <li>
                    <a href="<?= base_url(ADMIN_ARTICLE . "/create") ?>"> <i class="fa fa-plus-circle fa-1x"></i><?= $this->lang->line("article_button_add"); ?></a>
                </li>
            </ul>
        </div>
    </section>

    <!-- Main content -->
    <section class="content">
        <!--Row Search-->
        <div class="row" id="div_search_panel">
            <div class="col-xs-12">
                <div class="box box-info box-solid ">
                    <div class="box-header">
                        <!-- tools box -->
                        <div class="pull-right box-tools">
                            <button class="btn btn-default btn-sm pull-right" data-widget='collapse'
                                    data-toggle="tooltip" title="Collapse" style="margin-right: 5px;">
                                <i class="fa fa-plus" style="font-size: large"></i></button>
                        </div><!-- /. tools -->
                        <h3 class="box-title">
                            <?= $this->lang->line("button_search"); ?>
                        </h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label class="col-md-4 control-label text-right"><?= $this->lang->line("pages_title"); ?></label>
                                <div class="col-md-8">
                                    <select class="form-control" id="page_id" name="page_id">
                                        <option value=""></option>
                                        <?php if (!empty($pages) && count($pages) > 0): ?>
                                            <?php foreach ($pages as $item): ?>
                                                <option value="<?= $item["id"] ?>"><?php echo isEnglishLang() ? $item["name_en"] : $item["name_th"] ?></option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label class="col-md-4 control-label text-right"><?= $this->lang->line("article_name"); ?> (ไทย)</label>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="name_th">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 ">
                                <div class="form-group">
                                    <label class="col-md-4 control-label text-right"><?= $this->lang->line("article_name"); ?> (English)</label>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="name_en">
                                    </div>
                                </div>
                            </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label class="col-md-3 control-label text-right"><?= $this->lang->line("form_field_published"); ?></label>
                                <div class="col-md-9">
                                    <select class="form-control" id="published" name="published">
                                        <option value=""></option>
                                        <option value="1"><?= $this->lang->line("form_field_published"); ?></option>
                                        <option value="0"><?= $this->lang->line("form_field_unpublished"); ?></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.box-body-->

                    <div class="box-footer">
                        <div class="text-center">
                            <button id="btn_search" type="button" onclick="search()" class="btn btn-primary "><i
                                    class="fa fa-search"></i> <?= $this->lang->line("button_search"); ?>
                            </button>
                            <button id="btn_clear_search" onclick="clearTextSearch()" type="button" class="btn btn-default">
                                <i class="fa fa-refresh"></i>
                                <?= $this->lang->line("button_clear"); ?>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Row Data Table -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-info">
                    <!--Header-->
                    <!--  <div class="box-header"></div>-->
                    <!--Body-->
                    <div class="box-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover " id="articles_datatable">
                                <thead>
                                <tr>
                                    <th><?= $this->lang->line("table_seq"); ?></th>
                                    <th><?= $this->lang->line("web_page"); ?></th>
                                    <th><?= $this->lang->line("article_name");?> (ไทย)</th>
                                    <th><?= $this->lang->line("article_name");?> (English)</th>
                                    <th><?= $this->lang->line("article_publish_date"); ?></th>
                                    <th><?= $this->lang->line("table_order"); ?></th>
                                    <th><?= $this->lang->line("table_record_status"); ?></th>
                                    <th class="text-center">
                                        <button type="button" id="btn_search" onclick="setVisibleSearchPanel()"
                                                data-toggle="tooltip" data-placement="top" title="แสดงการค้นหา"
                                                class="btn btn-primary ">
                                            <i class="glyphicon glyphicon-zoom-in"></i>
                                        </button>
                                    </th>
                                </tr>
                                </thead>
                            </table>
                        </div>

                    </div><!-- /.box-body-->
                </div>
            </div>
        </div>


    </section>
    <!-- /.content -->
</div>


<script type="text/javascript">

    var dataTable;

//    $.fn.dataTable.render.ellipsis = function () {
//        return function ( data, type, row ) {
//            if(data != null && data != ''){
//                return type === 'display' && data.length > 10 ? data.substr( 0, 100 ) +'…' : data;
//            }
//            return '';
//        }
//    };

    $(document).ready(function () {

        loadArticlesDataTable();

        setupKeyEnterSearch();

        setVisibleSearchPanel();
    });

    function setupKeyEnterSearch() {
        $("#name_en,#name_th").keyup(function (e) {
            if (e.keyCode == 13) {
                $("#btn_search").trigger("click");
            }
        });
    }

    function loadArticlesDataTable() {
        var columns = [
            {data: null, "sClass": "right", "bSortable": false, "sWidth": "3%"}, //1st column
            {data: "page_name", "sClass": "text", "sWidth": "10%"},
            {data: "name_th", "sClass": "text", "sWidth": "15%"},
            {data: "name_en", "sClass": "text", "sWidth": "15%"},
            {data: "published_date", "sClass": "text", "sWidth": "10%"},
            {data: "sequence", "sClass": "text", "sWidth": "5%"},
            {data: "status", "sClass": "text", "sWidth": "5%"},
            {sClass: "text", "sWidth": "10%"},
            {data: "published", "sClass": "text", "visible": false},
            {data: "page_id", "sClass": "text", "visible": false},
        ];

        var columnDefs = [
            {targets: 3, },
            {targets: 4, },
            {targets: 5, render: function (data, type, row) {
                var value_order = (row.order_seq != null && row.order_seq != '') ? row.order_seq : 1;
                return '<input type="number" onblur="updateOrderSeq(this , ' + row.id + ')" value="' + value_order + '" class="form-control" name="order" step="1" min="1" style="width: 60px" >';
            }},
            {targets: 6, render: function (data, type, row) {
                var label_text = '<div class="text-left"> ';
                if (parseInt(row.published) == 1) {
                    label_text += '<h4><span class=\"label label-success\" >' + '<?=$this->lang->line("form_field_published");?>' + '</span></h4>';
                } else {
                    label_text += '<h4><span class=\"label label-danger\" >' + '<?=$this->lang->line("form_field_unpublished");?>' + '</span></h4>';
                }
                label_text += '</div>'
                return label_text;
            }},
            {targets: 7, render: function (data, type, row) {
                var buttons = '<div class="text-center"> ';
                buttons += '<a href=<?=base_url(ADMIN_ARTICLE)?>/show/' + row.id + '  class="btn btn-info glyphicon glyphicon-info-sign " data-toggle="tooltip" data-placement="top" title="แสดงข้อมูลรายละเเอียด"></a> ';
                buttons += '<a href=<?=base_url(ADMIN_ARTICLE)?>/update/' + row.id + '  class="btn btn-warning glyphicon glyphicon-pencil " data-toggle="tooltip" data-placement="top" title="แก้ไขข้อมูล"></a>';
                buttons += ' <a href="javascript:void(0)" onclick=deleteData(' + row.id + ') class="button_delete btn btn-danger glyphicon glyphicon-trash" data-toggle="tooltip" data-placement="top" title="ลบข้อมูล"></a>';
                buttons += '</div>'
                return buttons;
            }},
        ];


        dataTable = $('#articles_datatable').DataTable({
            'ajax': {
                type: "GET",
                url: BASE_URL + 'admin/article/loadArticlesDataTable',
                dataSrc: 'data'
            },
            "language": {
                "emptyTable": '<?=$this->lang->line("table_no_records");?>',
                "zeroRecords": '<?=$this->lang->line("table_no_records");?>'
            },
            columnDefs: columnDefs,
            columns: columns,
            pageLength: 10,
            bJQueryUI: true,
            bLengthChange: false,
            bFilter: true,
            bInfo: false,
            bSort: false,
            autoWidth: false,
            responsive: true
        });

        dataTable.on('order.dt search.dt', function () {
            dataTable.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
                cell.innerHTML = i + 1;
            });
        }).draw();

    }

    function updateOrderSeq(element, rowId) {
        var targetUrl = BASE_URL + 'admin/Article/updateOrderSeq';
        if (rowId != null && rowId != '') {
            showSpinner();
            $.ajax({
                type: 'POST',
                url: targetUrl,
                data: {rowId: rowId, order_seq: element.value},
                dataType: 'json',
                success: function (response) {
                    hideSpinner();
                    dataTable.ajax.reload();
                },
                error: function (request, status, error) {
                    hideSpinner();
                    alert(request.responseText);
                }
            });
        }
    }

    function deleteData(id) {
        var targetUrl = BASE_URL + 'admin/Article/delete/' + id;
        if (id != "") {
            BootstrapDialog.show({
                title: '<i class="glyphicon glyphicon-warning-sign"></i> Warning',
                size: BootstrapDialog.SIZE_SMALL,
                type: BootstrapDialog.TYPE_WARNING,
                message: 'คุณต้องการลบข้อมูลใช่หรือไม่?',
                closable: false, // <-- Default value is false
                draggable: true, // <-- Default value is false
                buttons: [{
                    // icon: 'glyphicon glyphicon-ban-circle',
                    label: 'ตกลง',
                    cssClass: 'btn-warning',
                    action: function (dialog) {
                        $.post(targetUrl, function (response) {
                            if (response.success == true) {
                                dataTable.ajax.reload();
                            } else {
                                alert('failed');
                            }
                        }, 'json');
                        dialog.close();
                    }
                }, {
                    label: 'ยกเลิก',
                    action: function (dialog) {
                        dialog.close();
                    }
                }]
            });
        }
    }

    function search() {
        var name_th = $('#name_th').val();
        var name_en = $('#name_en').val();
        var published = $("#published option:selected").val();
        var page_name =  $("#page_id option:selected").text();

        dataTable.column(1).search(page_name);
        dataTable.column(2).search(name_th);
        dataTable.column(3).search(name_en);
        dataTable.column(8).search(published);
        dataTable.draw();
    }

    function clearTextSearch() {
        $('#published').prop('selectedIndex', 0);
        $('#page_id').prop('selectedIndex', 0);
        $('#name_en').val('');
        $('#name_th').val('');
    }

    function setVisibleSearchPanel() {
        if ($('#div_search_panel').is(":visible")) {
            $('#div_search_panel').hide();
        } else {
            $('#div_search_panel').show();
        }
    }

</script>

<?php $this->load->view("includes/admin/footer"); ?>
