<form action="index.php" method="POST" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Add an item</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="title">Title</label>  
  <div class="col-md-4">
  <input id="title" name="title" type="text" placeholder="Title of the media" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="author-firstname">Author first name</label>  
  <div class="col-md-4">
  <input id="author-firstname" name="author-firstname" type="text" placeholder="Author first name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="author-lastname">Author last name</label>  
  <div class="col-md-4">
  <input id="author-lastname" name="author-lastname" type="text" placeholder="Author last name" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="publisher-name">Publisher</label>  
  <div class="col-md-4">
  <input id="publisher-name" name="publisher-name" type="text" placeholder="Name of Publisher " class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="publisher-adress">Street</label>  
  <div class="col-md-4">
  <input id="publisher-adress" name="publisher-adress" type="text" placeholder="Example Avenue 12" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="publisher-zip">ZIP</label>  
  <div class="col-md-4">
  <input id="publisher-zip" name="publisher-zip" type="text" placeholder="e.g. 14512" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="publisher-city">City</label>  
  <div class="col-md-4">
  <input id="publisher-city" name="publisher-city" type="text" placeholder="e.g. Berlin" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="isbn">ISBN</label>  
  <div class="col-md-4">
  <input id="isbn" name="isbn" type="text" placeholder="ISBN Number" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="genre">Genre</label>  
  <div class="col-md-4">
  <input id="genre" name="genre" type="text" placeholder="Genre" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="description">Description</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="description" name="description">A few lines</textarea>
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="media-type">Type of media</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="media-type-0">
      <input type="radio" name="media-type" id="media-type-0" value="book" checked="checked">
      Book
    </label>
	</div>
  <div class="radio">
    <label for="media-type-1">
      <input type="radio" name="media-type" id="media-type-1" value="cd">
      CD
    </label>
	</div>
  <div class="radio">
    <label for="media-type-2">
      <input type="radio" name="media-type" id="media-type-2" value="dvd">
      DVD
    </label>
	</div>
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="status">Status</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="status-0">
      <input type="radio" name="status" id="status-0" value="0" checked="checked">
      Available
    </label> 
    <label class="radio-inline" for="status-1">
      <input type="radio" name="status" id="status-1" value="1">
      Reserved
    </label>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="create"></label>
  <div class="col-md-4">
    <button id="create" name="create" class="btn btn-primary">Create Entry</button>
  </div>
</div>

</fieldset>
</form>




<?php
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
	   die("Connection failed: " . mysqli_connect_error() . "\n");
	}
	

	if(isset($_POST['create'])) {

	$title = $_POST['title'];
	$author_firstname = $_POST['author-firstname'];
	$author_lastname = $_POST['author-lastname'];
	$publisher_name = $_POST['publisher-name'];
	$publisher_adress = $_POST['publisher-adress'];
	$publisher_zip = $_POST['publisher-zip'];	
	$publisher_city = $_POST['publisher-city'];
	$isbn = $_POST['isbn'];
	$genre = $_POST['genre'];
	$description = $_POST['description'];
	$media_type = $_POST['media-type'];
	$status = $_POST['status'];



		// INSERTING ITEM INFO
		$sql = "
		INSERT INTO items 
		(
			item_title, 
			item_isbn, 
			item_genre,
			item_short_description,
			item_status,
			item_type
		)
		VALUES ('$title', '$isbn', '$genre', '$description', '$status', '$media_type')";
		if (mysqli_query($conn, $sql)) {
		   echo "New item <strong>" . $title . "</strong> by <strong>" . $author_firstname ." " . $author_lastname . "</strong> created.\n <br>";
		} else {
		   echo "Item creation error for: " . $sql . "\n" . mysqli_error($conn);
		}


		// INSERTING AUTHOR INFO
		$sql = "
		INSERT INTO author 
		(
			author_firstname, 
			author_lastname
		)
		VALUES ('$author_firstname', '$author_lastname')";
		
		if (mysqli_query($conn, $sql)) {
		   echo "New item <strong>" . $title . "</strong> by <strong>" . $author_firstname ." " . $author_lastname . "</strong> created.\n <br>";
		} else {
		   echo "Fuck you mySQL! Error: " . $sql . "\n" . mysqli_error($conn);
		}

		// INSERTING PUBLISHER INFO
		$sql = "
		INSERT INTO publisher 
		(
			publisher_name, 
			publisher_adress,
			publisher_zip,
			publisher_city
		)
		VALUES ('$publisher_name', '$publisher_adress', '$publisher_zip', '$publisher_city')";		

		if (mysqli_query($conn, $sql)) {
		   echo "New item <strong>" . $title . "</strong> by <strong>" . $author_firstname ." " . $author_lastname . "</strong> created.\n <br>";
		} else {
		   echo "Fuck you mySQL! Error: " . $sql . "\n" . mysqli_error($conn);
		}
		
	}
	
	// mysqli_close($conn);
?>
