<DOCTYPE !HTML>

<html>
<body>


<?php

/*
ISBN Validation
Given the above constraints of the ISBN number, you should write a function that can return TRUE if a number is a valid ISBN and FALSE otherwise.  Test out your function with several valid and invalid 10-digit ISBNs (you can look up some real ISBNs in online bookstores), including ones where the last digit is written as X.  

$ISBN = "2034986842";
$d1 = substr($ISBN,1,1);	
$d2 = substr($ISBN,2,1);
$d3 = substr($ISBN,3,1);
$d4 = substr($ISBN,4,1);
$d5 = substr($ISBN,5,1);
$d6 = substr($ISBN,6,1);
$d7 = substr($ISBN,7,1);
$d8 = substr($ISBN,8,1);
$d9 = substr($ISBN,9,1);
$d0 = substr($ISBN,10,1);

function isbncheck ()
(10 * $d1) + (9 * $d2) + (8 * $d3) + (7 * $d4) + (6 * $d5) + (5 * $d6) + (4 * $d7) + (3 * $d8) + (2 * $d9) + (1 * $d0)
; 
*/
?>


<h3> coin flip</h3>
<?php

/*Create a PHP page that simulates a series of random coin tosses for 1, 3, 5, 7, and 9 flips. You should make your page visually interesting by using images to represent a toss of heads or tails.:


b.  Create a loop that will toss the coin repeatedly until you have flipped exactly two heads in a row. Stop the loop and print out to the page the number of tosses this took, */
 $coinflip = mt_rand (0,1); 
	 if ($coinflip == 0) {
		 echo "Heads";
	 }
	else {
		echo "Tails";
	}
  
//From Code Academy


	$headCount = 0;
	$flipCount = 0;
	while ($headCount < 2) {
		$flip = mt_rand(0,1);
		$flipCount ++;
		if ($flip){
			$headCount ++;
			echo "Heads";
		}
		else {
			$headCount = 0;
			echo "Tails"; 
		}
	}
	echo "<p>It took {$flipCount} flips!</p>";
		 
	 
 ?>
 
 </body>
 </html>