<?php
$a1 = "";
$a2 = "";
$a3 = "";
$a4 = "";
$a5 = "";
$a6 = "";
$a7 = "";
$a8 = "active";
$a9 = "";

include('admin_header.php'); ?>
<!DOCTYPE html>

<html>

<head>
	<title>ADMIN | STOCK </title>
	<script src="../js/jquery-2.1.4.min.js"></script>
</head>

<body>

	<div class="ban-top">
		<div class="ads-grid" style="padding-top: 2%; padding-bottom: 2%">
			<div class="container" style="width: 100%; ">
				<div class="product-sec1">
					<div class="checkout-right">
						<div class="table-responsive">
							<div class="agileits_search2">

							</div>


							<?php include('sidebar/side_stock.php'); ?>
							<font face="ubuntu" color="blue">
								<h3>
									<div style="padding-left: 4%"><i class="fa fa-sort-amount-asc"></i> View All</div>
								</h3>
							</font><br>
							<table class="table table-bordered" style="width: 82%; font-family: ubuntu;">

								<thead>
									<tr>
										<th>Stock ID</th>
										<th>Stock Name</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Remove</th>
									</tr>
								</thead>
								<tbody>
									<?php
									include('../dbcon.php');
									$result = mysqli_query($conn, "SELECT * FROM product");
									while ($row = mysqli_fetch_array($result)) {
										?>

										<tr class="rem1 row-<?php echo $row['Product_ID']; ?>"
											data-quantity="<?php echo $row['Quantity']; ?>">

											<td class="invert"><?php echo $row['Product_ID'];
											$id = $row['Product_ID']; ?>
											</td>
											<td class="invert">
												<?php echo $row['Name']; ?>
											</td>

											<td class="invert">
												<?php echo $row['Price']; ?>
											</td>

											<td class="invert">
												<?php echo $row['Quantity']; ?>
											</td>
											<script>
												$(document).ready(function () {
													$('tr.rem1').each(function () {
														var quantity = $(this).data('quantity');

														if (quantity > 100) {
															$(this).css('background-color', 'green');
														} else if (quantity > 20) {
															$(this).css('background-color', 'yellow');
														} else {
															$(this).css('background-color', 'red');
														}
													});
												});
											</script>

											<td class="invert">

												<div
													class="snipcart-details10 top_brand_home_details item_add single-item hvr-outline-out">

													<input type="submit" name="submit" value="Remove" class="button10"
														onclick="window.location.href='stock_delete.php?id=<?php echo $id; ?>'" /></a>
												</div>
							</div>
							</td>
							</tr>
						<?php }
									?>

						</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>


</body>

<?php include('admin_footer.php'); ?>

</html>