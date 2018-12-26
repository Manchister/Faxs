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

	// ATTEND FOR SORTING IMAGES ALL THE TIMES AFTER EDITTING


	$imgs_1_q = "SELECT * FROM images WHERE fax_id='$id' AND io='1' ORDER BY page ASC";
	$imgs_1_res = mysqli_query($link, $imgs_1_q);
	$imgs_1_arr = mysqli_fetch_array($imgs_1_res);
	$imgs_1_rows = mysqli_num_rows($imgs_1_res);

	
	$imgs_2_q = "SELECT * FROM images WHERE fax_id='$id' AND io='2' ORDER BY page ASC";
	$imgs_2_res = mysqli_query($link, $imgs_2_q);
	$imgs_2_arr = mysqli_fetch_array($imgs_2_res);
	$imgs_2_rows = mysqli_num_rows($imgs_2_res);
	
	
} else {
	echo "string";
}


?>



<div style="height: 100vh" class="container- container-fluid">
    
	<div class="branch_title btn btn-lg mb-0">
		<h1 class="animated fadeIn center" style="flex-basis: 80% !important;">
			<a href="faxs.php?id=<?php echo $branch_id; ?>"><?php echo $branch_title; ?></a></h1>
		<div class="faxs_control_btns btn-group- mt-0">
			<div class="faxs_control_btns btn-group- mt-0">
			<!-- <div class="add_fax btn btn-success"> -->
				<a class="add_fax btn btn-brown" href="edit.php?id=<?php echo $id; ?>" style="font-weight: bolder; font-size: 20pt;"><span class="fa fa-lg fa-edit"></span>
				تعديل
				</a>
			<!-- </div> -->
		</div>
		</div>
	</div>


	<div class="add_fax mt-1">
		<form class="add_fax_form" enctype="multipart/form-data" action="add_fax_handler.php" method="POST">

			<div class="col_1 card_ text-center" style="flex-basis: 30%; min-height: 100%; min-width: 250px;">
				<div class="card-header warning-color">
					<h2 class="text-center h2-responsive">الرد</h2>
				</div>
				<div class="card-body_">
					
					<!--Carousel Wrapper-->
					<div id="carousel-2" class="carousel slide carousel-fade_">
					    
					    <?php

						if ($imgs_2_rows > 0) {

						?>
					    <!--Slides-->
					    <div class="carousel-inner" role="listbox">
					    <?php
							foreach ($imgs_2_res as $img) {
								$img_id = $img['id'];
								$img_url = $img['url'];
								$img_page = $img['page'];
								if ($img_page == 1) {
									$active = "active";
								} else {
									$active = " ";
								}
								echo "<div class='page carousel-item $active'>
								<div class='fax_page'>
									<span class='page_num btn btn-indigo'><span class='fa fa-file'></span> $img_page</span>
									<img src='$img_url' class='fax_img d-block w-100' style='height:600px;'>
									</div>
								</div>";
								
							}
						?>

					    </div>
					    <!--/.Slides-->
					    <!--Controls-->
					    <a class="carousel-control-prev" href="#carousel-2" role="button" data-slide="prev">
					        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					        <span class="sr-only">Previous</span>
					    </a>
					    <a class="carousel-control-next" href="#carousel-2" role="button" data-slide="next">
					        <span class="carousel-control-next-icon" aria-hidden="true"></span>
					        <span class="sr-only">Next</span>
					    </a>

					    <?php
						}
						 
					     ?>


					    <!--/.Controls-->
					</div>
					<!--/.Carousel Wrapper-->
				</div>
			        

				<!-- <div class="card-footer text-muted warning-color- white-text">
			        <a class="btn btn-warning btn-sm">Go somewhere</a>
			    </div> -->
			</div>








			<div class="col_2 card_ text-center" style="flex-basis: 40%; padding: 5px; min-width: 250px; min-height: 100%;">
				<div class="card-header danger-color">
					<h2 class="text-center h2-responsive">البيانات</h2>
				</div>
				<div class="card-body_" style="height: 100%;">

					<div class="show_details">
						<span class="labels btn-indigo">بشأن</span>
						<h3 class="outputs"><?php echo $about; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">ت. الفاكس</span>
						<h3 class="outputs"><?php echo $date_1; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">ت. المكتب</span>
						<h3 class="outputs"><?php echo $date_2; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">الجهة</span>
						<h3 class="outputs"><?php echo $branch_title; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">تأشيرة رئيس عمليات</span>
						<h3 class="outputs"><?php echo $f_f3; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">تأشيرة قائد ثان الفوج</span>
						<h3 class="outputs"><?php echo $f_f2; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">تأشيرة قائد الفوج</span>
						<h3 class="outputs"><?php echo $f_f1; ?></h3>
					</div>

					<div class="show_details">
						<span class="labels btn-indigo">الإجراء المتخذ</span>
						<h3 class="outputs"><?php echo $action; ?></h3>
					</div>
					
				</div>

				<div class="card-footer_ text-muted danger-color- white-text">
					<a class="add_fax btn btn-elegant" href="edit.php?id=<?php echo $id; ?>" style="font-weight: bolder; font-size: 20pt; width: 100%;"><span class="fa fa-lg fa-print" style="font-size: 40px;"></span>&nbsp;
				طباعة
				</a>
					<!-- <input type="submit" name="save_fax" id="save_fax" value="حفظ" class="btn- btn-lg btn-danger" style="font-weight: bolder; font-size: 26pt;"> -->
			    </div>
			</div>









			<div class="col_1 card_ text-center" style="flex-basis: 30%; min-height: 100%; min-width: 250px;">
				<div class="card-header info-color">
					<h2 class="text-center h2-responsive">الفاكس</h2>
				</div>
				<div class="card-body_">
					
					<!--Carousel Wrapper-->
					<div id="carousel-1" class="carousel slide carousel-fade_">
					    					    
					    <?php

						if ($imgs_1_rows > 0) {

						?>
					    <!--Slides-->
					    <div class="carousel-inner" role="listbox">
					    <?php
							foreach ($imgs_1_res as $img) {
								$img_id = $img['id'];
								$img_url = $img['url'];
								$img_page = $img['page'];
								if ($img_page == 1) {
									$active = "active";
								} else {
									$active = " ";
								}
								echo "<div class='page carousel-item $active'>
								<div class='fax_page'>
									<span class='page_num btn btn-indigo'><span class='fa fa-file'></span> $img_page</span>
									<img src='$img_url' class='fax_img d-block w-100' style='height:600px;'>
									</div>
								</div>";
							}
					     ?>
					    </div>
					    <!--/.Slides-->
					    <!--Controls-->
					    <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
					        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					        <span class="sr-only">Previous</span>
					    </a>
					    <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
					        <span class="carousel-control-next-icon" aria-hidden="true"></span>
					        <span class="sr-only">Next</span>
					    </a>

					    <?php
					    } 
					     ?>
					    <!--/.Controls-->
					</div>
					<!--/.Carousel Wrapper-->
				</div>



				<!-- <div class="card-footer text-muted info-color- white-text">
			        <a class="btn btn-info btn-sm">Go somewhere</a>
			    </div> -->
			</div>
			
		</form>
	</div>
	

</div>




<?php

include_once('footer.php');

?>