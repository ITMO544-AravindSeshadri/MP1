<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head><title>My Page</title>
</head>
<body>
<h2>Input Form</h2>
<form enctype="multipart/form-data" action="result.php" method="POST">
Enter Email: <input type="email" id="EmailId"><br>
Enter Phone Number: <input type="text" name="Phone"><br>
<input type="hidden" name="MAX_FILE_SIZE" value="3000000"><br>
Load Image: <input type="file" name="UserFile"><br>
<input type="submit" value="Submit Form" />
<br>
<br>
<form enctype="multipart/form-data" action="gallery.php" method="POST">
Enter email of the Gallery to find: <input type="email" name="GalEmail"><br>
<input type="submit" value="View Gallery" />
</form>
</body>
</html>