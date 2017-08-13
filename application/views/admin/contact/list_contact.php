<?php $this->load->view("includes/admin/header"); ?>
<?php $this->load->view("includes/admin/navbar"); ?>

<div class="content-wrapper">
    <!-- Content Header (contact header) -->
    <section class="content-header">
        <h1>
            <span><?= $this->lang->line("contact_title_list_of_contact"); ?></span>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <!--Row Search-->
        <div class="row" id="div_search_panel">
            <div class="col-xs-12">
                <div class="box box-info box-solid">
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
                        <div class="col-md-4 ">
                            <div class="form-group">
                                <label
                                        class="col-md-4 control-label"><?= $this->lang->line("contact_full_name"); ?></label>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="name">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 ">
                            <div class="form-group">
                                <label class="col-md-4 control-label text-right"><?= $this->lang->line("contact_email"); ?></label>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="email">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 ">
                            <label class="col-md-4 control-label text-right"><?= $this->lang->line("phone"); ?></label>
                            <div class="form-group">
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="phone">
                                </div>
                            </div>
                        </div>
                    </div><!-- /.box-body-->

                    <div class="box-footer">
                        <div class="text-center">
                            <button type="button" onclick="search()" class="btn btn-primary "><i
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
                            <table class="table table-striped table-bordered table-hover" id="contacts_datatable">
                                <thead>
                                <tr>
                                    <th><?= $this->lang->line("table_seq"); ?></th>
                                    <th><?= $this->lang->line("contact_full_name"); ?></th>
                                    <th><?= $this->lang->line("contact_email"); ?></th>
                                    <th><?= $this->lang->line("contact_phone"); ?></th>
                                    <th><?= $this->lang->line("message"); ?></th>
                                    <th class="text-center"><?= $this->lang->line("table_created_date"); ?></th>
                                    <th class="text-center">
                                        <button type="button" id="btn_search" onclick="setVisibleSearchPanel()" class="btn btn-primary ">
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

    var dataTable = $('#contacts_datatable');

    $(document).ready(function () {

        setVisibleSearchPanel();

        setupKeyEnterSearch();

        loadContactsDataTable();

    });


    function setupKeyEnterSearch() {
        $("#name,#email,#phone").keyup(function (e) {
            if (e.keyCode == 13) {
                $("#btn_search").trigger("click");
            }
        });
    }

    function loadContactsDataTable() {
        var columns = [
            {data: null, "sClass": "right", "bSortable": false, "sWidth": "3%"}, //1st column
            {data: "name", "sClass": "text", "sWidth": "15%"},
            {data: "email", "sClass": "text", "sWidth": "10%"},
            {data: "phone", "sClass": "text", "sWidth": "10%"},
            {data: "subject", "sClass": "text", "sWidth": "20%"},
            {data: "created_date", "sClass": "text-center", "sWidth": "10%"},
            {
                orderable: false, "sWidth": "10%",
                mRender: function (data, type, row) {
                    var buttons = '<div class=text-center><a href=<?=base_url(ADMIN_CONTACT)?>/detail/' + row.id + '  class="btn btn-info glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="top" title="รายละเอียดข้อมูล"></a>';
                    buttons += ' <a href="javascript:void(0)" onclick=deleteData(' + row.id + ') class="button_delete btn btn-danger glyphicon glyphicon-trash" data-toggle="tooltip" data-placement="top" title="ลบข้อมูล"></a>';
                    buttons + '</div>';
                    return buttons;
                }
            }
        ];

        dataTable = $('#contacts_datatable').DataTable({
            'ajax': {
                type: "GET",
                url: BASE_URL + 'admin/Contact/loadContactsDataTable',
                dataSrc: 'data'
            },
            "language": {
                "emptyTable": '<?=$this->lang->line("table_no_records");?>',
                "zeroRecords": '<?=$this->lang->line("table_no_records");?>'
            },
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

    function deleteData(id) {
        var targetUrl = BASE_URL + 'admin/Contact/delete/' + id;
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
        var email = $('#email').val();
        var name = $('#name').val();
        var phone = $('#phone').val();

        dataTable
            .column(1).search(name)
            .column(2).search(email)
            .column(3).search(phone)
            .draw();
    }

    function clearTextSearch() {
        $('#name').val('');
        $('#email').val('');
        $('#phone').val('');
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
