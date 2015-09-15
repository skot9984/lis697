<DOCTYPE !HTML>

<html>
<body>


<h3> Change Challenge</h3>
<?php
$change=159;
$d= (int) ($change / 100);
$q= (int) ($change%100/25);
$di= (int) ($change%100%25/10);
$n= (int) ($change%100%25%10/5); 
$p= (int) ($change%100%25%10%5/1);

echo "You are due back $change cents";
echo "You are due $d dollar, $q quarters, $di dimes, $n nickels and $p cent";
?>


<h3>99 Bottles of Beer</h3>
<?php
for($count=4; $count>=0; --$count) {

  if ( $count == 0 ) break;
  echo "$count bottles of beer on the wall, $count bottles of beer";
	echo "take one down, pass it around, $count bottles of beer on the wall";		
  }
echo "No more beer on the wall\n";
?>

</body>
</html>
