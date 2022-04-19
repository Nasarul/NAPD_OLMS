<?php
include('../includes/header.php');
?>

<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-20">
				<div class="card">
					<div class="card-body">
						<table id="example" class="table table-striped table-bordered" style="width:100%">
							<thead>
								<tr>
									<!-- <th>Course Name</th> -->
									<!-- <th>Subject Code</th> -->
									<th>Subject Name</th>
									<th>Actions</th>
								</tr>
							</thead>

							<tbody>
								<?php
								include('../config/dbcon.php');
								$stmt = $conn->prepare("select * from tblsubject");
								$stmt->execute();
								while ($row = $stmt->fetch()) {
								?>
									<tr>
										<!-- <td><?php echo $row['course_name'] ?></td> -->
										<!-- <td><?php echo $row['code'] ?></td> -->
										<td><?php echo $row['name'] ?></td>
										<td class="text-center">
											<a href="download.php?sub_id=<?php echo $row['sub_id'] ?>" class="btn btn-success" title="Download"><i class="fa-solid fa-down"></i>Download</a>
										</td>
									</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Pagenation--->
	<!-- <nav aria-label="Page navigation example" id="pagination">
    <ul class="pagination justify-content-center my-3">
      <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
  </nav> -->

	<script src="js/bootstrap.min.js" charset="utf-8"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" charset="utf-8"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
</body>

</html>