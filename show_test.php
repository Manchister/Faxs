<?php

include_once('header.php');


if (isset($_GET['id'])) {
	$id = $_GET['id'];

	$details_q = "SELECT * FROM faxs WHERE id='$id'";
	$_res_1 = mysqli_query($link, $details_q);
	$_arr_1 = mysqli_fetch_array($_res_1);
	$_rows_1 = mysqli_num_rows($_res_1);
	if ($_rows_1 > 0) {
		$branch_id = $_arr_1['branch_id'];
		$branch_title = $_arr_1['branch_title'];
		$date_1 = $_arr_1['date_1'];
		$date_2 = $_arr_1['date_2'];
		$f_f1 = $_arr_1['f1'];
		$f_f2 = $_arr_1['f2'];
		$f_f3 = $_arr_1['f3'];
		$action = $_arr_1['action'];
		$about = $_arr_1['about'];
	}

	$imgs_1_q = "SELECT * FROM images WHERE fax_id='$id' AND io='1'";
	$imgs_1_res = mysqli_query($link, $imgs_1_q);
	$imgs_1_arr = mysqli_fetch_array($imgs_1_res);
	$imgs_1_rows = mysqli_num_rows($imgs_1_res);

	if ($imgs_1_rows > 0) {
		foreach ($imgs_1_res as $img) {
			$img_id = $img['id'];
			$img_url = $img['url'];
			$img_page = $img['page'];
			// echo "<img src='$img_url'><br>";
		}
	}

	$imgs_2_q = "SELECT * FROM images WHERE fax_id='$id' AND io='2'";
	$imgs_2_res = mysqli_query($link, $imgs_2_q);
	$imgs_2_arr = mysqli_fetch_array($imgs_2_res);
	$imgs_2_rows = mysqli_num_rows($imgs_2_res);
	if ($imgs_2_rows > 0) {
		foreach ($imgs_2_res as $img) {
			$img_id = $img['id'];
			$img_url = $img['url'];
			$img_page = $img['page'];
			// echo "<img src='$img_url'><br>";
		}
	}
	
} else {
	echo "string";
}


?>

<div style="height: 100vh" class="container- container-fluid">
    
	
	
<!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
    
    <!--Slides-->

    <div class="carousel-inner" role="listbox">
    <?php

	if ($imgs_1_rows > 0) {
		foreach ($imgs_1_res as $img) {
			$img_id = $img['id'];
			$img_url = $img['url'];
			$img_page = $img['page'];
			if ($img_page == 1) {
				$active = "active";
			} else {
				$active = " ";
			}
			echo "<div class='carousel-item $active'>
				<img src='$img_url' class='d-block w-100'>
			</div>";
			
		}
	}
	 
     ?>


    </div>
    <!--/.Slides-->
    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->
                

</div>




<?php

include_once('footer.php');

?>




<script type="text/javascript">
$('.carousel').carousel();
</script>