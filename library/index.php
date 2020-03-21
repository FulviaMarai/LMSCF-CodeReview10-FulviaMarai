<?php require_once 'actions/db_connect.php'; ?>

<!DOCTYPE html>
<html>
<head>
   <title>Big Library</title>
   <link rel="stylesheet" type="text/css" href="mystyle.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


<script>
$(function () {
  $('[data-toggle="popover"]').popover()
});
</script>

</head>
<body>
  <div class="container">
    <br>
  <div class="jumbotron " >
    <h1 class="display-4"> Welcome to the Big Virtual Library! </h1>
  </div>

<div class ="card">
   <table class="table-responsive table-hover table-sm w-auto">
       <thead>
           <tr>
              <th scope="col" class="th-sm">Title</th>
              <th scope="col" class="th-sm">Author</th>
              <th scope="col" class="th-sm">Publisher</th>
              <th scope="col" class="th-sm"> Type </th>
              <th scope="col" class="th-sm"> ISBN code </th>
           </tr>
          
       </thead>
       <tbody>

        <?php
           $sql = "SELECT * FROM media WHERE available = 0";
           $result = $connect->query($sql);

            if($result-> num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                   echo  "<tr>
                    <td data-toggle='popover' data-placement='top' data-content='Do you want to know more about this title?'> ".$row['title']." </td>

                    <td data-toggle='popover' data-placement='top' data-content='Do you want to know more about this author?'> ".$row['author']." </td>

                    <td class='small' data-toggle='popover' data-placement='top' data-content='Do you want to know more about this publisher?'> ".$row['publisher']."(".$row['publish_date'].") </td>

                    <td>" .$row['type']." </td>
                    <td>" .$row['ISBN']." </td>

                        <td>
                           <a href='update.php?id=" .$row['id']."'><button type='button' class='btn btn-outline-info btn-sm'>Edit</button></a>
                           <a href='delete.php?id=" .$row['id']."'><button type='button'class='btn btn-outline-danger btn-sm'>Delete</button></a>

                       </td>
                   </tr>" ;
               }
           } else  {
              echo  "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>";
           }
            ?>
           
       </tbody>
   </table>
    <br>
    <hr>
   <a href= "create.php"><button type="button" class='btn btn-outline-info btn-lg'> Add another book or media </button></a>
   <br>
</div>

</div>
</body>
</html>