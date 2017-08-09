

<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 1.2.0
    </div>
    <strong>Copyright &copy; 2017-2018 <a href="http://modernsofttech.com">ModernSoft Technology</a>.</strong> All rights reserved.
</footer>
</div><!-- ./wrapper -->


<?php echo js_asset('functions.js') ?>
<script type="text/javascript">
    // Prevent user input enter submit
    $(document).ready(function () {
        $(window).keydown(function (event) {
            if (event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });

    });

    // Show the progress bar
    NProgress.start();

    // Increase randomly
    var interval = setInterval(function () {
        NProgress.inc();
    }, 1000);

    // Trigger finish when page fully loaded
    jQuery(window).load(function () {
        clearInterval(interval);
        NProgress.done();
    });

    // Trigger bar when exiting the page
    jQuery(window).unload(function () {
        NProgress.start();
    });


</script>
</body>
</html>
