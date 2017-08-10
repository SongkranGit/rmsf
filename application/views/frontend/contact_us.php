<?php $this->load->view("includes/frontend/header"); ?>


<div class="container" >
    <div class="col-md-5 col-md-offset-3">
        <div class="form-area" >
            <form role="form" method="post" action="<?php base_url('contact/create')?>">
                <br style="clear:both">
                <h1 style="margin-bottom: 25px; text-align: center;">Contact Form</h1>
                <div class="form-group">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
                </div>
                <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                </div>

                <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Submit Form</button>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function () {

    });



</script>

<?php $this->load->view("includes/frontend/footer"); ?>