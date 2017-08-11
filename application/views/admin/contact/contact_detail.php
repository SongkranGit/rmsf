<?php $this->load->view("includes/admin/header"); ?>
<?php $this->load->view("includes/admin/navbar"); ?>

<?php
    $arr_courses = (isset($data["courses"]) && $data["courses"] != '')?unserialize($data["courses"]):null;
    $qr_code_id = isset($data["qr_code_id"])?$data["qr_code_id"]:null;
    $is_approve = isset($data["is_approve"])?$data["is_approve"]:0;
?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            <span><?= $this->lang->line("contact_information"); ?></span>
        </h1>
        <div class="group-buttons-right">
            <ul class="nav nav-pills">
                <li>
                    <a href="<?= base_url(ADMIN_CONTACT) ?>"> <i class="fa fa-list"></i><?= $this->lang->line("contact_button_list_contact"); ?></a>
                </li>
            </ul>
        </div>
    </section>

    <section class="content">
        <form id="form_contact_detail" role="form" class="form-horizontal">
            <div class="panel panel-default">
                <div class="panel-heading heading-create">
                <span>
                    <i class="fa fa-user"></i>
                    <?= $this->lang->line("contact_detail"); ?>
                </span>
                </div>

                <div class="panel-body">

                    <div class="form-group  ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("full_name"); ?></label>
                        <div class="col-md-8">
                            <input type="text" id="full_name" name="full_name" class="form-control"
                                   value="<?php echo setFormData($data, $key = "name"); ?>">
                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("contact_email"); ?></label>
                        <div class="col-md-8">
                            <input type="text" id="title" name="title" class="form-control"
                                   value="<?php echo setFormData($data, $key = "email"); ?>">
                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("contact_phone"); ?></label>
                        <div class="col-md-8">
                            <input type="text" id="title" name="phone" class="form-control"
                                   value="<?php echo setFormData($data, $key = "phone"); ?>">
                        </div>
                    </div>

                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("phone"); ?></label>
                        <div class="col-md-8">
                            <input type="text" id="title" name="phone" class="form-control" value="<?php echo setFormData($data, $key = "phone"); ?>">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("subject"); ?></label>
                        <div class="col-md-8">
                            <input type="text" id="title" name="phone" class="form-control" value="<?php echo setFormData($data, $key = "subject"); ?>">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="col-md-2  control-label"><?= $this->lang->line("message"); ?></label>
                        <div class="col-md-8">
                          <textarea rows="3" class="form-control"
                                    name="description_en"><?php echo setFormData($data, $key = "message"); ?></textarea>
                        </div>
                    </div>

                </div>
                <div class="panel-footer">
                    <div class="clearfix"></div>
                </div>
            </div>
        </form>
    </section>


</div><!-- /.content-wrapper -->

<script type="text/javascript">

    $(document).ready(function () {
        $("#form_contact_detail :input").attr("disabled", true);
    });

</script>

<?php $this->load->view("includes/admin/footer"); ?>

