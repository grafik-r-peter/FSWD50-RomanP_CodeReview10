<?php
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
	   die("Connection failed: " . mysqli_connect_error() . "\n");
	}
		// DISPLAY ITEMS OUT OF DATABASE //

		$sql = 	"	SELECT 	
					i.item_title, 
					a.author_firstname,
					a.author_lastname,
					p.publisher_name,
					p.publisher_adress,
					p.publisher_zip,
					p.publisher_city,
					i.item_isbn, 
					i.item_genre, 
					i.item_type,
					i.item_short_description, 
					i.item_image,
					i.item_status
					FROM `items` AS i
					INNER JOIN `author` AS a ON i.item_id = a.fk_item_id
					INNER JOIN `publisher` AS p ON i.item_id = p.fk_items_id
				";

		$result = mysqli_query($conn, $sql);
		// fetch the next row (as long as there are any) into $row
		while($row = mysqli_fetch_assoc($result)) {
		       printf("		<h3><strong> %s</strong> </h3><br>      
		       				<strong>%s %s </strong><br> 
		       				%s<br>
		       				%s<br>
		       				%s %s<br>
		       				ISBN: %s<br>
		       				Genre: %s<br>
		       				Type: %s<br>
		       				<strong>Description:</strong><br>
		       				<p>%s</p><br>
		       				%s<br>
		       				Reserved: %s<hr>
		       				",

	                     	$row["item_title"], 
	                     	$row["author_firstname"], 
	                     	$row["author_lastname"],
	                     	$row["publisher_name"], 
	                     	$row["publisher_adress"], 
	                     	$row["publisher_zip"],
	                     	$row["publisher_city"],
	       					$row["item_isbn"],
							$row["item_genre"],
							$row["item_type"],
	       					$row["item_short_description"],
							$row["item_image"],
							$row["item_status"])		       
		       ;
		}
		// Free result set
		mysqli_free_result($result);
	

	// mysqli_close($conn);
?>
