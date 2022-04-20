<?php
include('../includes/header.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Upload Lecture</title>
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<div id="main">
		<div id="header">
			<h1>Upload Lecture file</h1>
		</div>
		<div id="content">
			<form method="">
				<label>Course : </label>
				<select id="course" class="form-select" aria-label="Default select example">
					<option value="" selected>Select Course</option>					
				</select>
				<br><br>
				<label>Subject : </label>
				<select id="subject" class="form-select" aria-label="Default select example">>
					<option value="" selected>Select subject</option>
				</select>
<br>
<br><button type="button" upload="<?php echo $_FILE_name;?>" class="btn btn-primary">Upload Lacture</button>
				<button type="button" download="<?php echo $_FILE_name;?>" class="btn btn-info">Download Lacture</button>
			</form>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			function loadData(type, category_id) {
				$.ajax({
					url: "load-cs.php",
					type: "POST",
					data: {
						type: type,
						id: category_id
					},
					success: function(data) {
						if (type == "subjectData") {
							$("#subject").html(data);
						} else {
							$("#course").append(data);
						}

					}
				});
			}

			loadData();

			$("#course").on("change", function() {
				var course = $("#course").val();

				if (course != "") {
					loadData("subjectData", course);
				} else {
					$("#subject").html("");
				}


			})
		});
	</script>
</body>

</html>