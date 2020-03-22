<?php 

require_once 'db_connect.php';

if ($_GET) {
  $cover = $_GET['cover'];
  $title = $_GET['title'];
  $author = $_GET['author'];
  $publisher = $_GET['publisher'];
  $publish_date = $_GET['publish_date'];
  $type = $_GET['type'];
  $ISBN = $_GET['ISBN'];
  $description = $_GET['description'];
  

   $sql = "SELECT * FROM media (cover, title, author, publisher, publish_date, type, ISBN, description) VALUES ('$cover','$title','$author','$publisher','$publish_date','$type','$ISBN','$description')";
    if($connect->query($sql) === TRUE) {
      echo "<br><p>You have successfully created a new record! <br> What do you want to do now?</p><br>" ;
      echo "<a href='../create.php'><button type='button'class='btn btn-outline-info btn-lg'>Add another media</button></a>";
      echo "<a href='../index.php'><button type='button'class='btn btn-outline-info btn-lg'>Back to the main page</button></a>";
   } else  {
       echo "Error " . $sql . ' ' . $connect->connect_error;
   }

   $connect->close();
}

?>
