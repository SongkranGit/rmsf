<?php
$controller = $this->uri->segment(2);
$fuc = $this->uri->segment(3);
$role = $this->session->userdata('role_id');
?>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <!--Dashboard-->
            <li class="header"
                style="color:white;font-size: large; text-align: center"><?= $this->lang->line("menu_main"); ?></li>
            <li class="<?= (strcasecmp($controller, DASHBOARD) == 0) ? "active" : "" ?>">
                <a href="<?= base_url(ADMIN_DASHBOARD) ?>">
                    <i class="fa fa-dashboard"></i> <span><?= $this->lang->line("menu_dashboard"); ?></span>
                </a>
            </li>

            <!--WebPages-->

            <!--Content-->
            <li class="treeview <?= ($controller == ARTICLE
                || $controller == GALLERIES
                || $controller == GALLERY_IMAGE
                || $controller == PAGE) ? "active" : "" ?>">

                <a href="#">
                    <i class="glyphicon glyphicon-pencil"></i> <span><?= $this->lang->line("menu_content"); ?></span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <!--Page-->
                    <li class="<?= (strcasecmp($controller, PAGE) == 0) ? "active" : "" ?>">
                        <a href="<?= base_url(ADMIN_PAGE) ?>">
                            <i class="<?= (strcasecmp($controller, PAGE) == 0) ? "fa fa-circle-o text-green" : "fa fa-circle-o" ?>"></i>
                            <?= $this->lang->line("menu_content_pages"); ?></a>
                    </li>

                    <!--Article-->
                    <li class="<?= (strcasecmp($controller, ARTICLE) == 0) ? "active" : "" ?>">
                        <a href="<?= base_url(ADMIN_ARTICLE) ?>">
                            <i class="<?= (strcasecmp($controller, ARTICLE) == 0) ? "fa fa-circle-o text-green" : "fa fa-circle-o" ?>"></i>
                            <?= $this->lang->line("menu_content_articles"); ?></a>
                    </li>

                    <!--Gallery-->
                    <li class="<?= ($controller == GALLERIES || $controller == GALLERY_IMAGE) ? "active" : "" ?>">
                        <a href="<?= base_url(ADMIN_GALLERY) ?>">
                            <i class="<?= ($controller == GALLERIES || $controller == GALLERY_IMAGE) ? "fa fa-circle-o text-green" : "fa fa-circle-o" ?>"></i>
                            <?= $this->lang->line("menu_galleries"); ?></a>
                    </li>
                </ul>
            </li>

            <!--Slide Show-->
            <li class="<?= (strcasecmp($controller, SLIDE_SHOW) == 0) ? "active" : "" ?>">
                <a href="<?= base_url(ADMIN_SLIDE_SHOW) ?>">
                    <i class="glyphicon glyphicon-picture"></i> <span><?= $this->lang->line("menu_galleries_slideshow"); ?></span>
                </a>
            </li>

            <!--Founder-->

            <!--User-->
            <li class="<?= (strcasecmp($controller, CONTACT) == 0) ? "active" : "" ?>">
                <a href="<?= base_url(ADMIN_CONTACT) ?>">
                    <i class="glyphicon glyphicon-briefcase"></i> <span><?= $this->lang->line("menu_contact_list"); ?></span>
                </a>
            </li>

            <!--Settings-->
            <li class="treeview  <?= ($controller == SETTING || $controller == USER) ? "active" : "" ?>">
                <a href="#">
                    <i class="fa fa-gears"></i> <span><?= $this->lang->line("menu_settings"); ?></span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="<?= (strcasecmp($controller, SETTING) == 0) ? "active" : "" ?>">
                        <a href="<?= base_url(ADMIN_SETTING) ?>">
                            <i class="<?= (strcasecmp($controller, SETTING) == 0) ? "fa fa-circle-o text-green" : "fa fa-circle-o" ?>"></i> <?= $this->lang->line("menu_settings_general"); ?>
                        </a>
                    </li>

                    <?php if (strtolower($this->session->userdata('user_role')) != 'user'): ?>
                        <li class="<?= (strcasecmp($controller, USER) == 0) ? "active" : "" ?>">
                            <a href="<?= base_url(ADMIN_USER) ?>">
                                <i class="<?= (strcasecmp($controller, USER) == 0) ? "fa fa-circle-o text-green" : "fa fa-circle-o" ?>"></i>
                                <?= $this->lang->line("menu_users"); ?></a>
                        </li>
                    <?php endif; ?>
                </ul>
            </li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>