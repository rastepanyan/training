<?php 
   $servername="localhost";
   $username="root";
   $password="1234root";
   $db="myDB";
   	
   $conn=m ysqli_connect($servername, $username, $password, $db);
   	
   if (!$conn) {
   	die( "Failed! " . mysqli_connect_error());
   } 
   echo "Connection established";
   ?>
<html>
   <head>
      <title>Index</title>
      <meta charset="utf-8">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   </head>
   <body>
      <h1>Connect</h1>
      <?php
         $query = "SELECT * FROM users";
         mysqli_query($db, $query) or die('Error!');
         
         $result = mysqli_query($db, $query);
         $row = mysqli_fetch_array($result);
         
         while ($row = mysqli_fetch_array($result)) {
          echo $row['first_name'] . ' ' . $row['last_name'] . ': ' . $row['address'] . ' ' . $row['post_code'] . ' ' . $row['city'] . ' ' . $row['country_code'] .'<br />';
         }
         mysqli_close($db);
         ?>
   </body>
</html>