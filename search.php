<?php

include_once('header.php');

if (isset($_POST['search_faxs']) && !empty($_POST['search_faxs'])) {
    $search_txt = $_POST['search_faxs'];
    $search_txt = mysqli_real_escape_string($link, $search_txt);
    $search_q = "SELECT * FROM faxs WHERE ";
}

?>
    <!-- Start your project here-->
    <div style="height: 100vh" class="container- container-fluid">
        <div class="search_bar btn btn-lg mb-0">
            <form class="search_form" action="search.php" method="POST">
                <input type="text" name="search_faxs" id="search_faxs">
                <input type="submit" name="search_faxs" id="search_faxs" class="btn btn-md btn-info" value="بحث" />
            </form>
        </div>

        
    </div>
    <!-- /Start your project here-->

<?php

include_once('footer.php');

?>
