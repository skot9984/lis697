<!DOCTYPE = HTML>

<HTML>
	
<style>	
tr:nth-child(odd) {background: #888888}	
</style>

<BODY>

<?php







$textbook = array (
				array ('PHP and MySQL Web Development','Luke','Welling','114','Paperback','31.63'),
				array ('Web Design with HTML, CSS, JAvascript, and JQuery',	'Jon','Duckett','135','Paperback','41.23'),
				array ('PHP Cookbook: Solutions & Examples for PHP Programmers','David','Sklar','14','Paperback','40.88'),
				array ('Javascript and JQuery: Interactive Front-End Web Development','Jon','Duckett','251','Paperback','22.09'),
				array ('Modern PHP: New Features and Good PRatices','Josh','Lockhart','7','Paperback','28.49'),
				array ('Programming PHP','Kevin','Tatroe','26','Paperback','28.96'),
				);
 print_r ($textbook);
 
  
echo '<table>';

foreach ($textbook as $a); {
		echo '<tr>';
		
		echo '<td>', $a, '</td >';

		echo '</tr>';
}	


echo '</table>' ;
?>


</BODY>
</HTML>