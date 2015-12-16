<!doctype html>
<html>
<?php
include_once '/include/header.php';
require_once '/include/login2.php';
?>

<body>

	<style>
	<link rel="stylesheet" type="text/css" href="style.css">
	</style>


<form name="input" action="museum.php" method="post">
<!--
<fieldset>   
<legend>Type of Museum:</legend>  
  
 <select name="type">
 
 <option value="all" >All Museums
 <option value="1"/>Art
 <option value="2"/>Children
 <option value="3"/>Cultural
 <option value="4"/>Historical
 <option value="5"/>Science
 <option value="6"/>Other
 </select>
</fieldset> 

<fieldset>
<legend>Located in:</legend>
 <select name="location">
  <option value="all" >Located anywhere
 <option value="1"/>Lower Manhattan
 <option value="2"/>Mid Manhattan
 <option value="3"/>Brooklyn
 <option value="4"/>Queens
 <option value="5"/>Bronx
 <option value="6"/>Staten Island
 <option value="7"/>Upper Manhattan
  </select>
</fieldset>
-->

<div class="menu">
<label>
    Show me
    <span class="custom-dropdown custom-dropdown--white">
        <select class="custom-dropdown__select custom-dropdown__select--white" name="type">
 <option value="all" >All Museums
 <option value="1"/>Art Museums
 <option value="2"/>Children Museums
 <option value="3"/>Cultural Museums
 <option value="4"/>Historical Museums
 <option value="5"/>Science Museums
 <option value="6"/>Other Museums
 </select>
</label>

<label>
    that are located in
    <span class="custom-dropdown custom-dropdown--white">
        <select class="custom-dropdown__select custom-dropdown__select--white" name="location">
  <option value="all" >New York City
 <option value="1"/>Lower Manhattan
 <option value="2"/>Mid Manhattan
 <option value="3"/>Brooklyn
 <option value="4"/>Queens
 <option value="5"/>Bronx
 <option value="6"/>Staten Island
 <option value="7"/>Upper Manhattan
  </select>
</label>


 

 <input type="submit" value="GO!"/>
</div>
 </form>
<?php
include_once '/include/footer.php';
?>
</body>
</html>