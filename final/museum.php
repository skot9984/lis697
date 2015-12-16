
<!doctype html>
<html>
<body>
<style>

</style>
<?php


include_once '/include/header.php';
require_once '/include/login2.php';
$conn = new mysqli ($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error); 


$req=$_POST['type'];
$req2=$_POST['location'];

print_r($_POST);


if ($req!="all" && $req2!="all")  $query="SELECT * FROM museum WHERE type_id='$req' AND location_id='$req2'";
else if($req=="all" && $req2!="all" ) $query="SELECT * FROM museum WHERE location_id='$req2'";
else if($req!="all" && $req2=="all" ) $query="SELECT * FROM museum WHERE type_id='$req'";
else if($req=="all" || $req2=="all" ) $query="SELECT * FROM museum";


$result = $conn->query($query);
if (!$result) die ("Database access failed: ". $conn->error);
$rows = $result->num_rows;

	
if ($rows == 0) {
		echo "No museum found with your selection, please <a href=index.php>try again!</a>";

	} else {		
echo "<table><tr> <th>Museum Name</th> <th>Address</th><th>Admisson</th><th>Info</th></tr>";
while  ($row = $result->fetch_assoc()) {
	echo '<tr>';
	echo "<td><a href=\"".$row["museum_link"]."\">".$row["museum_name"]."</td><td>".$row["address"]."</td><td>".$row["admission"]."</td><td>".$row["info"]."</td>";	
	
	echo '</tr>';
}
echo "</table>";
	}	
	


$result->close();
$conn->close();


include_once '/include/footer.php';
?>
</body>
</html>

