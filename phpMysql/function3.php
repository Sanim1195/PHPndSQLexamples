<!DOCTYPE html>
<html>
<head>
<title>PHP Function Test</title>
</head>
<body>
<?php

/*All the code required to calculate the function is contained within the factorial()
function definition code block.*/

function factorial($value1) {
 $factorial = 1;
 $count = 1;
 while($count <= $value1) {
 $factorial *= $count;
 $count++;
 }
 return $factorial;
}
?>
<h1>Calculating factorials</h1>
<?php

/*When PHP uses the factorial() function, it passes 
a single value that the function assigns to the $value1 variable */


echo "The factorial of 10 is " . factorial(10) . "<br>\n";
echo "The factorial of 5 is " . factorial(5) . "<br>\n";

    /*When the calculation is complete is complete, 
    the function code returns the results back to the main program */

?>
</body>
</html>