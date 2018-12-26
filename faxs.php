<?php

require_once('header.php');

if (isset($_GET['id'])) {
	$branch_id = $_GET['id'];
	$branch_q = $conn->query("SELECT * FROM branches WHERE id='$branch_id'");
	$branch_title = $branch_q->fetchObject()->title;

} else {
	echo "string";
}


?>

<div style="height: 100vh" class="container- container-fluid">
    
	<div class="branch_title btn btn-lg mb-0">
		<div class="search_bar">
            <form class="search_form" action="search.php" method="POST">
                <input type="text" name="search_faxs" id="search_faxs">
                <input type="submit" name="search_faxs" id="search_faxs" class="btn btn-md btn-info" value="بحث" />
            </form>
        </div>

		<h1 class="animated fadeIn center"><?php echo $branch_title; ?></h1>
		<div class="faxs_control_btns btn-group- mt-0">
			<!-- <div class="add_fax btn btn-success"> -->
				<a class="add_fax btn btn-success" href="add_fax.php?b_id=<?php echo $branch_id; ?>" style="font-weight: bolder; font-size: 20pt;"><span class="fa fa-lg fa-plus"></span>
				إضافة فاكس
				</a>
		<!-- </div> -->
		</div>
	</div>






	<div class="fax_table container- container-fluid card- text-center" style="flex-basis: 30%; height: 100%; min-width: 250px;">
		<div class="container- card-body">
			
			<table id="faxs_table" class="">
				<?php
				$header_tr = "<tr>
                <th class='col-tools'><h5 style='font-size:18pt;font-weight:bold;'>الأدوات</h5></th>
                <th class='col-about'><h5 style='font-size:18pt;font-weight:bold;'>الموضوع</h5></th>
                <th class='col-date'><h5 style='font-size:18pt;font-weight:bold;'>التاريخ</h5></th>
                <th class='col-num'><h5>م</h5></th>
                </tr>";

                $query = "SELECT * FROM faxs WHERE branch_id='$branch_id' ORDER BY id DESC";
                $result = mysqli_query($link, $query);
                $rows = mysqli_num_rows($result);
                if ($rows > 0) {
                	echo $header_tr;
                	$i = 0;

                	foreach ($result as $fax) {
                		$fax_id = $fax['id'];
                		$fax_date = $fax['date_1'];
                		$fax_about = $fax['about'];
                		$i++;

                		echo "<tr>
                            <td class='col-tools'>
                            	<a href='show.php?id=$fax_id' class='btn btn-md btn-disabled' style='font-size:18pt;font-weight:bold;'><span class='fa fa-lg fa-minus'></span> حذف</a>
                            	<a href='edit.php?id=$fax_id' class='btn btn-md btn-brown' style='font-size:18pt;font-weight:bold;'><span class='fa fa-lg fa-edit'></span> تعديل</a>
                            	<a href='show.php?id=$fax_id' class='btn btn-md btn-mdb' style='font-size:18pt;font-weight:bold;'><span class='fa fa-lg fa-eye'></span> عرض</a>
                            </td>
                            <td class='col-about'><h5>$fax_about</h5></td>
                            <td class='col-date'><h5>$fax_date</h5></td>
                            <td class='col-num'><h5>$i</h5></td>
                        </tr>";
                	}
                } else {
                	echo "<h1 class='center black-text danger-color'>لا يوجد فاكسات مُدخلة حاليا</h1>";
                }

                
				 ?>
			</table>
			
		</div>
	        

		<div class="card-footer text-muted secondary-color- white-text">
	        <!-- <a class="btn btn-warning btn-sm">Go somewhere</a> -->
	    </div>
	</div>

	

</div>



<?php

include_once('footer.php');

?>
