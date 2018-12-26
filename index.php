<?php

include_once('header.php');

?>
    <!-- Start your project here-->
    <div style="height: 100vh" class="container- container-fluid">
        <div class="search_bar btn btn-lg mb-0">
            <form class="search_form" action="search.php" method="POST">
                <input type="text" name="search_faxs" id="search_faxs">
                <input type="submit" name="search_faxs" id="search_faxs" class="btn btn-md btn-info" value="بحث" />
            </form>
        </div>

        <div class="btns">



        <?php
            foreach($categories as $key => $value) {
                $title_btn = '<a class="btn btn-lg btn-yellow" style="font-size: 26px;border-radius: 5px; color: black !important;" href="faxs.php?id=' .$key. '">' . $value . '</a>';
            echo $title_btn;
        
            }
                    
        ?>



<!--
        <?php
            $branches_q = "SELECT * FROM branches ORDER BY 'id' ASC";
            $branches_res = mysqli_query($link, $branches_q);
            $branches_row = mysqli_fetch_row($branches_res);
            $branches_arr = mysqli_fetch_array($branches_res);
            if ($branches_row > 0) {

                    foreach ($branches_res as $key) {
                        $title = htmlspecialchars($key['name']);
                        $title_btn = '<div class="btn btn-lg btn-deep-purple" style="font-size: 26px;border-radius: 20px;">' . $title . '</div>';
                        echo $title_btn;
                    }
                }
         ?>
        </div>
-->        </div>
    </div>
    <!-- /Start your project here-->

<?php

include_once('footer.php');

?>
