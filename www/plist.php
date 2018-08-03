<?php

$servername = "db";
$username = "fancooler";
$password = "1234";
$dbname = "myDB";

$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT title, price, description FROM products";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "
<table>
  <tr>
    <th>Title</th>
    <th>Price</th>
    <th>Description</th>
  </tr>";
	
    while($row = $result->fetch_assoc()) {
        echo "
  <tr>
    <td>".$row["title"]."</td>
    <td>".$row["price"]."</td>
    <td>".$row["description"]."</td>
  </tr>";
    }
    echo "
</table>";
} else {
    echo "0 results";
}
$conn->close();

?> 