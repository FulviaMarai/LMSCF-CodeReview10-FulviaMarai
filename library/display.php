<?php 

require_once 'actions/db_connect.php';

if ($_GET['id']) {
   $id = $_GET['id'];

   $sql = "SELECT * FROM media WHERE id = {$id}" ;
   $result = $connect->query($sql);

   $data = $result->fetch_assoc();

   $connect->close();
?>

<!DOCTYPE html>
<html>
<head>
   <title> Display Media</title>
 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
   <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
 <body>
  <div class="container">
    <br>
  <div class="jumbotron ">
    <h1 class="display-5"> <?php echo $data['title'] ?> </h1>
  </div>

<div class="card scheda">
  <div class="row">
    <div class="col">
      <div class="cover">
        <img src="<?php echo $data['cover'] ?>" >
      </div>
    </div>
    <div class= "col">
      <h3> <?php echo $data['title'] ?> </h3>
      <h5> Author:<?php echo $data['author']?> </h5>
      <h5 class="small"> Publisher: <?php echo $data['publisher'] ?>(<?php echo $data['publish_date'] ?>)  </h5>
      <P> <?php echo $data['description'] ?></P><br>
      <p> Type: <?php echo $data['type'] ?>   ISBN code: <?php echo $data['ISBN'] ?></p> <br>

      <hr>

      <a  href= "index.php"><button  type="button" class='btn btn-outline-info btn-lg'> Back to the main page</button ></a>
    </div>
  </div>
</div>
</div>
</body >
</html >

<?php
}
?>