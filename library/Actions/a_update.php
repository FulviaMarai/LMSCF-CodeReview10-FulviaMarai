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

   $id = $_GET['id'];

   $sql = "UPDATE media SET cover = '$cover', title = '$title', author = '$author', publisher = '$publisher', publish_date = '$publish_date', type = '$type', ISBN = '$ISBN', description = '$description' WHERE id = {$id}" ;
   if($connect->query($sql) === TRUE) {
    
       echo  "<p>Successfully Updated</p>";
       echo "<a href='../update.php?id=" .$id."'><button type='button'>Back</button></a>";
       echo  "<a href='../index.php'><button type='button'>Home</button></a>";
   } else {
        echo "Error while updating record : ". $connect->error;
   }

   $connect->close();

}

?>