<?php 
// include_once('config/config.php');
/**
* 
*/
class Prepare
{
	
	// public $root = "http://localhost/faxs/";
	// public $uploaddir = $_SERVER['DOCUMENT_ROOT'] . '/faxs/img/uploads';


	public function image($name,$tmp,$branch_id, $updir, $root)
	{
		if ($name != "") {
			$file_temp_name = $branch_id . "_" . md5(time()) . 'n' . $name;
			$fullpath = $updir . "/" . $file_temp_name;
			$file_name = $branch_id . '_temp.jpeg';
		    $fullpath_2 = "img/uploads/" . $file_temp_name;

		    //Move the file to correct location
		    $move = move_uploaded_file($tmp, $fullpath);
		    chmod($fullpath, 0777);
		    //Check for valid uplaod
		    if (!$move) {
		        // die('File didnt upload');
		        $src = "";
		    } else {
		        $src = $fullpath_2;
		    }
		} else {
			$src = "";
		}

	    return $src;
	}


	public function insertImage($fax_id,$io,$url,$p)
	{
		$link = mysqli_connect("localhost", "root", "", "faxs_db");
		if (mysqli_connect_errno()) {
			echo "Faild Connecting" . mysqli_connect_errno();
		}
		$sql = "INSERT INTO images VALUES ('','$fax_id', '$io', '$url', '$p')";
		$query = mysqli_query($link, $sql);
	}


	public function updateImage($fax_id,$io,$url,$p)
	{
		$link = mysqli_connect("localhost", "root", "", "faxs_db");
		if (mysqli_connect_errno()) {
			echo "Faild Connecting" . mysqli_connect_errno();
		}
		$sql = "UPDATE images SET url = '$url' WHERE fax_id = '$fax_id' AND page = '$p' AND io = '$io'";
		$query = mysqli_query($link, $sql);
	}

	public function returnImage($fax_id,$io,$p)
	{
		$link = mysqli_connect("localhost", "root", "", "faxs_db");
		if (mysqli_connect_errno()) {
			echo "Faild Connecting" . mysqli_connect_errno();
		}
		$sql = "SELECT id FROM images WHERE fax_id = '$fax_id' AND page = '$p' AND io = '$io'";
		$query = mysqli_query($link, $sql);
		$rows = mysqli_num_rows($query);
		if ($rows > 0) {
			return 1;
		} else {
			return 0;
		}
	}




}


 ?>