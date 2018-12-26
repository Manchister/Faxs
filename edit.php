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

	
	$imgs_2_q = "SELECT * FROM images WHERE fax_id='$id' AND io='2'";
	$imgs_2_res = mysqli_query($link, $imgs_2_q);
	$imgs_2_arr = mysqli_fetch_array($imgs_2_res);
	$imgs_2_rows = mysqli_num_rows($imgs_2_res);
	
	
} else {
	echo "string";
}
?>



<div style="height: 100vh" class="container- container-fluid">
    
	<div class="branch_title btn btn-lg mb-0">
		<h1 class="animated fadeIn center">
			<a href="faxs.php?id=<?php echo $branch_id; ?>"><?php echo $branch_title; ?></a>
			</h1>
		<div class="faxs_control_btns btn-group- mt-0">
			<!-- <div class="add_fax btn btn-success"> -->
				<a class="add_fax btn btn-warning" href="show.php?id=<?php echo $id; ?>" style="font-weight: bolder; font-size: 20pt;"><span class="fa fa-lg fa-arrow-left"></span>
				إلغاء
				</a>
		<!-- </div> -->
		</div>
	</div>

	<div class="add_fax mt-1">
		<form class="add_fax_form" enctype="multipart/form-data" action="edit_fax_handler.php" method="POST">


 
			<div class="col_1 card_ text-center btn" style="flex-basis: 25%; height: 100%; min-width: 250px;">
				<div class="card-header warning-color">
					<h2 class="text-center h2-responsive">الرد</h2>
				</div>
				<div class="card-body">
					
					
					<div class="details">
						<label for="image_2_1" class="labels btn-indigo">ص1</label>
						<input type="file" accept="image/*" id="image_2_1" name="image_2_1" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_2" class="labels btn-indigo">ص2</label>
						<input type="file" accept="image/*" id="image_2_2" name="image_2_2" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_3" class="labels btn-indigo">ص3</label>
						<input type="file" accept="image/*" id="image_2_3" name="image_2_3" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_4" class="labels btn-indigo">ص4</label>
						<input type="file" accept="image/*" id="image_2_4" name="image_2_4" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_5" class="labels btn-indigo">ص5</label>
						<input type="file" accept="image/*" id="image_2_5" name="image_2_5" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_6" class="labels btn-indigo">ص6</label>
						<input type="file" accept="image/*" id="image_2_6" name="image_2_6" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_7" class="labels btn-indigo">ص7</label>
						<input type="file" accept="image/*" id="image_2_7" name="image_2_7" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_2_8" class="labels btn-indigo">ص8</label>
						<input type="file" accept="image/*" id="image_2_8" name="image_2_8" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
				</div>
			        

				<!-- <div class="card-footer text-muted warning-color- white-text">
			         <a class="btn btn-warning btn-sm">Go somewhere</a>
			    </div> -->
			</div>








			<div class="col_2 card_ text-center" style="flex-basis: 35%; padding: 5px; min-width: 250px;">
				<div class="card-header danger-color">
					<h2 class="text-center h2-responsive">البيانات</h2>
				</div>
				<div class="card-body">

					<div class="details">
						<input type="text" name="f_id" id="f_id" value="<?= $id ?>" hidden />
					</div>

					<div class="details">
						<label for="f_about" class="labels btn-indigo">بشأن</label>
						<input type="text" name="f_about" id="f_about" class="inputs" value="<?= $about ?>" required />
					</div>

					<div class="details">
						<label for="f_d" class="labels btn-indigo">ت. الفاكس</label>
						<input type="date" name="f_d" id="f_d" value="<?= $date_1 ?>" class="inputs"/>
					</div>
					
					<div class="details">
						<label for="d_d" class="labels btn-indigo">ت. المكتب</label>
						<input type="date" name="d_d" id="d_d" value="<?= $date_2 ?>" class="inputs"/>
					</div>

					<div class="details">
						<label for="f_from" class="labels btn-indigo">الجهة</label>
						<input type="text-area" value="<?php echo $branch_title ?>" class="inputs" disabled />
					</div>

					<div class="details">
						<label for="f_f3" class="labels btn-indigo">تأشيرة رئيس عمليات</label>
						<input type="text" name="f_f3" id="f_f3" rows="6" class="inputs" value="<?php echo $f_f3; ?>" >
					</div>

					<div class="details">
						<label for="f_f2" class="labels btn-indigo">تأشيرة قائد ثان الفوج</label>
						<input type="text" name="f_f2" id="f_f2" rows="6" class="inputs" value="<?php echo $f_f2; ?>" >
					</div>

					<div class="details">
						<label for="f_f1" class="labels btn-indigo">تأشيرة قائد الفوج</label>
						<input type="text" name="f_f1" id="f_f1" rows="6" class="inputs" value="<?php echo $f_f1; ?>">
					</div>

					<div class="details">
						<label for="f_action" class="labels btn-indigo">الإجراء المتخذ</label>
						<input type="text" name="f_action" id="f_action" rows="6" class="inputs" value="<?php echo $action; ?>">
					</div>
					
				</div>

				<div class="card-footer_ text-muted danger-color- white-text">
					<input type="submit" name="edit_fax" id="edit_fax" value="حفظ" class="btn-lg btn-amber" style="font-weight: bolder; font-size: 26pt; color: white; width: 100%;">
			    </div>
			</div>







 

			<div class="col_1 card_ text-center btn" style="flex-basis: 25%; height: 100%; min-width: 250px;">
				<div class="card-header info-color">
					<h2 class="text-center h2-responsive">الفاكس</h2>
				</div>
				<div class="card-body">
					
					<div class="details">
						<label for="image_1_1" class="labels btn-indigo">ص1</label>
						<input type="file" accept="image/*" id="image_1_1" name="image_1_1" class="img_input btn btn-indigo btn-sm" style="width: 200px; background-color: gray;" />
					</div>
					
					<div class="details">
						<label for="image_1_2" class="labels btn-indigo">ص2</label>
						<input type="file" accept="image/*" id="image_1_2" name="image_1_2" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_1_3" class="labels btn-indigo">ص3</label>
						<input type="file" accept="image/*" id="image_1_3" name="image_1_3" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_1_4" class="labels btn-indigo">ص4</label>
						<input type="file" accept="image/*" id="image_1_4" name="image_1_4" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_1_5" class="labels btn-indigo">ص5</label>
						<input type="file" accept="image/*" id="image_1_5" name="image_1_5" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_1_6" class="labels btn-indigo">ص6</label>
						<input type="file" accept="image/*" id="image_1_6" name="image_1_6" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_1_7" class="labels btn-indigo">ص7</label>
						<input type="file" accept="image/*" id="image_1_7" name="image_1_7" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
					
					<div class="details">
						<label for="image_1_8" class="labels btn-indigo">ص8</label>
						<input type="file" accept="image/*" id="image_1_8" name="image_1_8" class="img_input btn btn-indigo btn-sm" style="width: 200px;" />
					</div>
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