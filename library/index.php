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


</head>
<body>
  <div class="container">
    <br>
  <div class="jumbotron " >
    <h1 class="display-5"> Welcome to the Big Virtual Library! </h1>
  </div>

<div class ="card">
   <table class="table-responsive table-hover table-sm w-auto my-custom-scrollbar  ">
       <thead>
           <tr class="text-info">
              <th scope="col" class="th-sm">Title</th>
              <th scope="col" class="th-sm">Author</th>
              <th scope="col" class="th-sm">Publisher</th>
              <th scope="col" class="th-sm">Type </th>
              <th scope="col" class="th-sm"> ISBN code </th>
           </tr>
          
       </thead>
       <tbody>


      <?php 

      $sql = "SELECT * FROM media  WHERE available = 0 ";
      $result = $connect-> query($sql);

            if($result-> num_rows > 0) { 
                while($row = $result->fetch_assoc()) {
                   echo  "<tr>
                    <td style='font-weight:bold'> <a href='show' data-toggle='modal' data-target='#myModal'>".$row['title']."</a> </td>
                    <td> ".$row['author']." </td>
                    <td> ".$row['publisher']."(".$row['publish_date'].") </td>
                    <td>" .$row['type']." </td>
                    <td>" .$row['ISBN']." </td>

                    <td> <a href='update.php?id=" .$row['id']."'><button type='button' class='btn btn-outline-info btn-sm'>Edit</button></a>
                      <a href='delete.php?id=" .$row['id']."'><button type='button'class='btn btn-outline-danger btn-sm'>Delete</button></a></td>
                          </tr>";
            }
           } else  {
              echo  "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>";
           }

   $sql = "SELECT * FROM media";
      $result = $connect-> query($sql);

            if($result-> num_rows > 0) { 
                while($row = $result->fetch_assoc()) {

       echo  '<div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">'.$row["title"].'</h4>
                            </div>
                            <div class="modal-body">
                              <img src='.$row["cover"].' alt="cover" height="200px" >
                              <p>'.$row["description"].'</p>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn  btn-outline-info btn-sm" data-dismiss="modal">Close</button>
                            </div>
                          </div>
                        </div>
                      </div>';
    }}



            ?>
           
       </tbody>
   </table>
    <br>
    <hr>
   <a href= "create.php"><button type="button" class='btn btn-outline-info btn-lg'> Add another book or media </button></a>
   <br>


  <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">".$row['title']."</h4>
      </div>
      <div class="modal-body">
        <img src=".$row['cover']." alt="cover">
        <p>".$row['description']."</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


</div>

</div>



</body>
</html>