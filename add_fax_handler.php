<?php 
include_once('config/config.php');
include_once('prepare.php');

$prepare = new Prepare;


if (isset($_POST['save_fax'])) {

	// DETAILS
	$f_about = $_POST['f_about'];
	$f_d = $_POST['f_d'];
	$d_d = $_POST['d_d'];
	$f_from = $_POST['f_from'];
	$branch_id = $_POST['branch_id'];
	$f_f3 = $_POST['f_f3'];
	$f_f2 = $_POST['f_f2'];
	$f_f1 = $_POST['f_f1'];
	$f_action = $_POST['f_action'];



	// GET THE LAST FAX ID
	$id_sql = "SELECT id FROM faxs ORDER BY id DESC";
	$id_q = mysqli_query($link, $id_sql);
	$id_arr = mysqli_fetch_array($id_q);
	$last_id = $id_arr[0];

	$f_id = ++$last_id;
	// echo $last_id;



	$details_sql = "INSERT INTO faxs VALUES ('', '$branch_id', '$f_from', '$f_d', '$d_d', '$f_f1', '$f_f2', '$f_f3', '$f_action', '', '$f_about')";

	$details_q = mysqli_query($link, $details_sql);

	// IMAGES
	// $src = "";
	$image_1_1 = "";
	$image_1_2 = "";
	$image_1_3 = "";
	$image_1_4 = "";
	$image_1_5 = "";
	$image_1_6 = "";
	$image_1_7 = "";
	$image_1_8 = "";
	$image_2_1 = "";
	$image_2_2 = "";
	$image_2_3 = "";
	$image_2_4 = "";
	$image_2_5 = "";
	$image_2_6 = "";
	$image_2_7 = "";
	$image_2_8 = "";



	// IMAGES 1
	if (isset($_FILES['image_1_1']['name']) && $_FILES['image_1_1']['name'] != "") {

		$image_1_1 = $_FILES['image_1_1']['name'];
	    $tmp_1_1 = $_FILES['image_1_1']['tmp_name'];

	    $src_1_1 = $prepare->image($image_1_1, $tmp_1_1, $branch_id, $updir, $theroot);
	    if ($src_1_1 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_1, '1');
	    }
	    
	} else {
		$src_1_1 = "";
	}


	if (isset($_FILES['image_1_2']['name']) && $_FILES['image_1_2']['name'] != "") {

		$image_1_2 = $_FILES['image_1_2']['name'];
	    $tmp_1_2 = $_FILES['image_1_2']['tmp_name'];

	    $src_1_2 = $prepare->image($image_1_2, $tmp_1_2, $branch_id, $updir, $theroot);
	    if ($src_1_2 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_2, '2');
	    }
	    
	} else {
		$src_1_2 = "";
	}


	if (isset($_FILES['image_1_3']['name']) && $_FILES['image_1_3']['name'] != "") {

		$image_1_3 = $_FILES['image_1_3']['name'];
	    $tmp_1_3 = $_FILES['image_1_3']['tmp_name'];

	    $src_1_3 = $prepare->image($image_1_3, $tmp_1_3, $branch_id, $updir, $theroot);
	    if ($src_1_3 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_3, '3');
	    }
	    
	} else {
		$src_1_3 = "";
	}


	if (isset($_FILES['image_1_4']['name']) && $_FILES['image_1_4']['name'] != "") {

		$image_1_4 = $_FILES['image_1_4']['name'];
	    $tmp_1_4 = $_FILES['image_1_4']['tmp_name'];

	    $src_1_4 = $prepare->image($image_1_4, $tmp_1_4, $branch_id, $updir, $theroot);
	    if ($src_1_4 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_4, '4');
	    }
	    
	} else {
		$src_1_4 = "";
	}


	if (isset($_FILES['image_1_5']['name']) && $_FILES['image_1_5']['name'] != "") {

		$image_1_5 = $_FILES['image_1_5']['name'];
	    $tmp_1_5 = $_FILES['image_1_5']['tmp_name'];

	    $src_1_5 = $prepare->image($image_1_5, $tmp_1_5, $branch_id, $updir, $theroot);
	    if ($src_1_5 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_5, '5');
	    }
	    
	} else {
		$src_1_5 = "";
	}


	if (isset($_FILES['image_1_6']['name']) && $_FILES['image_1_6']['name'] != "") {

		$image_1_6 = $_FILES['image_1_6']['name'];
	    $tmp_1_6 = $_FILES['image_1_6']['tmp_name'];

	    $src_1_6 = $prepare->image($image_1_6, $tmp_1_6, $branch_id, $updir, $theroot);
	    if ($src_1_6 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_6, '6');
	    }
	    
	} else {
		$src_1_6 = "";
	}


	if (isset($_FILES['image_1_7']['name']) && $_FILES['image_1_7']['name'] != "") {

		$image_1_7 = $_FILES['image_1_7']['name'];
	    $tmp_1_7 = $_FILES['image_1_7']['tmp_name'];

	    $src_1_7 = $prepare->image($image_1_7, $tmp_1_7, $branch_id, $updir, $theroot);
	    if ($src_1_7 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_7, '7');
	    }
	    
	} else {
		$src_1_7 = "";
	}


	if (isset($_FILES['image_1_8']['name']) && $_FILES['image_1_8']['name'] != "") {

		$image_1_8 = $_FILES['image_1_8']['name'];
	    $tmp_1_8 = $_FILES['image_1_8']['tmp_name'];

	    $src_1_8 = $prepare->image($image_1_8, $tmp_1_8, $branch_id, $updir, $theroot);
	    if ($src_1_8 != "") {
	    	$prepare->insertImage($f_id, '1', $src_1_8, '8');
	    }
	    
	} else {
		$src_1_8 = "";
	}


	




	// IMAGES 2
	if (isset($_FILES['image_2_1']['name']) && $_FILES['image_2_1']['name'] != "") {

		$image_2_1 = $_FILES['image_2_1']['name'];
	    $tmp_2_1 = $_FILES['image_2_1']['tmp_name'];

	    $src_2_1 = $prepare->image($image_2_1, $tmp_2_1, $branch_id, $updir, $theroot);
	    if ($src_2_1 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_1, '1');
	    }
	    
	} else {
		$src_2_1 = "";
	}


	if (isset($_FILES['image_2_2']['name']) && $_FILES['image_2_2']['name'] != "") {

		$image_2_2 = $_FILES['image_2_2']['name'];
	    $tmp_2_2 = $_FILES['image_2_2']['tmp_name'];

	    $src_2_2 = $prepare->image($image_2_2, $tmp_2_2, $branch_id, $updir, $theroot);
	    if ($src_2_2 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_2, '2');
	    }
	    
	} else {
		$src_2_2 = "";
	}


	if (isset($_FILES['image_2_3']['name']) && $_FILES['image_2_3']['name'] != "") {

		$image_2_3 = $_FILES['image_2_3']['name'];
	    $tmp_2_3 = $_FILES['image_2_3']['tmp_name'];

	    $src_2_3 = $prepare->image($image_2_3, $tmp_2_3, $branch_id, $updir, $theroot);
	    if ($src_2_3 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_3, '3');
	    }
	    
	} else {
		$src_2_3 = "";
	}


	if (isset($_FILES['image_2_4']['name']) && $_FILES['image_2_4']['name'] != "") {

		$image_2_4 = $_FILES['image_2_4']['name'];
	    $tmp_2_4 = $_FILES['image_2_4']['tmp_name'];

	    $src_2_4 = $prepare->image($image_2_4, $tmp_2_4, $branch_id, $updir, $theroot);
	    if ($src_2_4 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_4, '4');
	    }
	    
	} else {
		$src_2_4 = "";
	}


	if (isset($_FILES['image_2_5']['name']) && $_FILES['image_2_5']['name'] != "") {

		$image_2_5 = $_FILES['image_2_5']['name'];
	    $tmp_2_5 = $_FILES['image_2_5']['tmp_name'];

	    $src_2_5 = $prepare->image($image_2_5, $tmp_2_5, $branch_id, $updir, $theroot);
	    if ($src_2_5 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_5, '5');
	    }
	    
	} else {
		$src_2_5 = "";
	}


	if (isset($_FILES['image_2_6']['name']) && $_FILES['image_2_6']['name'] != "") {

		$image_2_6 = $_FILES['image_2_6']['name'];
	    $tmp_2_6 = $_FILES['image_2_6']['tmp_name'];

	    $src_2_6 = $prepare->image($image_2_6, $tmp_2_6, $branch_id, $updir, $theroot);
	    if ($src_2_6 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_6, '6');
	    }
	    
	} else {
		$src_2_6 = "";
	}


	if (isset($_FILES['image_2_7']['name']) && $_FILES['image_2_7']['name'] != "") {

		$image_2_7 = $_FILES['image_2_7']['name'];
	    $tmp_2_7 = $_FILES['image_2_7']['tmp_name'];

	    $src_2_7 = $prepare->image($image_2_7, $tmp_2_7, $branch_id, $updir, $theroot);
	    if ($src_2_7 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_7, '7');
	    }
	    
	} else {
		$src_2_7 = "";
	}


	if (isset($_FILES['image_2_8']['name']) && $_FILES['image_2_8']['name'] != "") {

		$image_2_8 = $_FILES['image_2_8']['name'];
	    $tmp_2_8 = $_FILES['image_2_8']['tmp_name'];

	    $src_2_8 = $prepare->image($image_2_8, $tmp_2_8, $branch_id, $updir, $theroot);
	    if ($src_2_8 != "") {
	    	$prepare->insertImage($f_id, '2', $src_2_8, '8');
	    }
	    
	} else {
		$src_2_8 = "";
	}




	
	// echo $f_d . "<br>" .$d_d. "<br>" .$f_from. "<br>" .$f_f3. "<br>" .$f_f2. "<br>" .$f_f1. "<br>" .$f_action. "<br><br><br><br>";
	


	// $img_tag1 = "<img width='300' height='300' src='";
	// $img_tag2 = "'/><br><br>";

	// echo $img_tag1 . $src_1_1 . $img_tag2;
	// echo $img_tag1 . $src_1_2 . $img_tag2;
	// echo $img_tag1 . $src_1_3 . $img_tag2;
	// echo $img_tag1 . $src_1_4 . $img_tag2;
	// echo $img_tag1 . $src_1_5 . $img_tag2;
	// echo $img_tag1 . $src_1_6 . $img_tag2;
	// echo $img_tag1 . $src_1_7 . $img_tag2;
	// echo $img_tag1 . $src_1_8 . $img_tag2;

	// echo $img_tag1 . $src_2_1 . $img_tag2;
	// echo $img_tag1 . $src_2_2 . $img_tag2;
	// echo $img_tag1 . $src_2_3 . $img_tag2;
	// echo $img_tag1 . $src_2_4 . $img_tag2;
	// echo $img_tag1 . $src_2_5 . $img_tag2;
	// echo $img_tag1 . $src_2_6 . $img_tag2;
	// echo $img_tag1 . $src_2_7 . $img_tag2;
	// echo $img_tag1 . $src_2_8 . $img_tag2;


if($details_q) {
	header("Location: show.php?id=$f_id");
} else {
	echo "حاول مرة اخرى";
}


}


 ?>