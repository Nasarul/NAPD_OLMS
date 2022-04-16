<?php
require_once('../config/dbcon.php');

if (isset($_POST['Submit'])) {
	$course = $_POST['course_id'];
	$name = $_POST['name'];
	$code = $_POST['code'];
	$lecture = $_POST['lecture'];
	if (empty($course)) {
		$errorMsg = 'Please input course name..';
	} elseif (empty($name)) {
		$errorMsg = 'Please input name..';
	} elseif (empty($code)) {
		$errorMsg = 'Please input code..';
	} elseif (empty($lecture)) {
		$errorMsg = 'Please input lecture..';
	}else {

		if (!isset($errorMsg)) {
			$sql = "INSERT INTO tblsubject(course_id, name, code, lecture)
					values('" . $course . "','" . $name . "', '" . $code . "' '" . $lecture . "')";
			$result = mysqli_query($conn, $sql);
			if ($result) {
				$successMsg = 'New record added successfully';
				header('Location: index.php');
			} else {
				$errorMsg = 'Error ' . mysqli_error($conn);
			}
		}
	}
}
?>