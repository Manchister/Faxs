<?php

include_once('header.php');


if (isset($_GET['b_id'])) {
	$branch_id = $_GET['b_id'];
	$branch_q = $conn->query("SELECT * FROM branches WHERE id='$branch_id'");
	$branch_title = $branch_q->fetchObject()->title;

} else {
	echo "string";
}

?>



<div style="height: 100vh" class="container- container-fluid">
    
	<div class="branch_title btn btn-lg mb-0">
		<h1 class="animated fadeIn center"><?php echo $branch_title; ?></h1>
		<div class="faxs_control_btns btn-group- mt-0">
			<!-- <div class="add_fax btn btn-success"> -->
				<a class="add_fax btn btn-warning" href="faxs.php?id=<?php echo $branch_id; ?>" style="font-weight: bolder; font-size: 20pt;"><span class="fa fa-lg fa-arrow-left"></span>
				إلغاء
				</a>
		<!-- </div> -->
		</div>
	</div>


	<div class="add_fax mt-1">
		<form class="add_fax_form" enctype="multipart/form-data" action="add_fax_handler.php" method="POST">

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
						<label for="f_about" class="labels btn-indigo">بشأن</label>
						<input type="text" name="f_about" id="f_about" class="inputs" required style="font-size: 28px;" />
					</div>

					<div class="details">
						<label for="f_d" class="labels btn-indigo">ت. الفاكس</label>
						<input type="date" name="f_d" id="f_d" value="<?= date('Y-m-d') ?>" class="inputs"/>
					</div>
					
					<div class="details">
						<label for="d_d" class="labels btn-indigo">ت. المكتب</label>
						<input type="date" name="d_d" id="d_d" value="<?= date('Y-m-d h:m:s') ?>" class="inputs"/>
					</div>

					<div class="details">
						<input type="text-area" name="f_from" id="f_from" value="<?php echo $branch_title ?>" class="inputs" hidden />
						<input type="text" name="branch_id" id="branch_id" value="<?php echo $branch_id ?>" class="inputs" hidden />
					</div>

					<div class="details">
						<label for="f_from" class="labels btn-indigo">الجهة</label>
						<input type="text-area" value="<?php echo $branch_title ?>" class="inputs" disabled />
					</div>

					<div class="details">
						<label for="f_f3" class="labels btn-indigo">تأشيرة رئيس عمليات</label>
						<textarea name="f_f3" id="f_f3" rows="6" class="inputs" ></textarea>
					</div>

					<div class="details">
						<label for="f_f2" class="labels btn-indigo">تأشيرة قائد ثان الفوج</label>
						<textarea name="f_f2" id="f_f2" rows="6" class="inputs" ></textarea>
					</div>

					<div class="details">
						<label for="f_f1" class="labels btn-indigo">تأشيرة قائد الفوج</label>
						<textarea name="f_f1" id="f_f1" rows="6" class="inputs" ></textarea>
					</div>

					<div class="details">
						<label for="f_action" class="labels btn-indigo">الإجراء المتخذ</label>
						<textarea name="f_action" id="f_action" rows="6" class="inputs" ></textarea>
					</div>
					
				</div>

				<div class="card-footer_ text-muted danger-color- white-text">
					<input type="submit" name="save_fax" id="save_fax" value="حفظ" class="btn- btn-lg btn-danger" style="font-weight: bolder; font-size: 26pt; width: 100%;">
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