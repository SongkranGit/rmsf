<?php $this->load->view("includes/frontend/header"); ?>

    <div class="container">
        <div class="col-md-5 col-md-offset-3">
            <div class="form-area">
                <?php echo form_open('contactus/create'); ?>
                <br style="clear:both">
                <h1 style="margin-bottom: 25px; text-align: center;">Contact Form</h1>

                <?php if (isset($success) && boolval($success) == TRUE): ?>
                    <div class="form-group">
                        <div class="alert alert-success">
                            <strong>Success!</strong> Indicates a successful or positive action.
                        </div>
                    </div>
                <?php endif; ?>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" value="<?php echo set_value('name'); ?>">
                    </div>
                    <?php echo form_error('name'); ?>
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input type="text" class="form-control" id="email" name="email" placeholder="Email" value="<?php echo set_value('email'); ?>">
                    </div>
                    <?php echo form_error('email'); ?>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" value="<?php echo set_value('phone'); ?>">
                    </div>
                    <?php echo form_error('phone'); ?>
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="  glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" value="<?php echo set_value('subject'); ?>">
                    </div>
                    <?php echo form_error('subject'); ?>
                </div>
                <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" name="message" placeholder="Message" maxlength="140"
                              rows="7"><?php echo set_value('message'); ?></textarea>
                    <?php echo form_error('message'); ?>
                </div>

                <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Submit Form</button>


                <?php echo form_close(); ?>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(document).ready(function () {
            hideSuccessMessage();
        });

        function hideSuccessMessage() {
            setTimeout(function () {
                $('.alert-success').hide();
            }, 2000);
        }

    </script>

<?php $this->load->view("includes/frontend/footer"); ?>