<?php


/*Arrays are complex variables. An array stores a group of values under a single
variable name. An array is useful for storing related values.
*/

    $pets[1] = "draculas";
    $pets[2] = "dogs";
    $pets[3] = "dragons";


/*  An array can be viewed as a list of key/value pairs. To get a particular value,
you specify the key in the brackets.
    In the preceding array, the keys are  numbers: 1, 2, and 3. 
*/

/*
shortcuts for creating an array


            $pets[] = "draculas";
            $pets[] = "dogs";
            $pets[] = "dragons";


                    OR


    $pets = array( "draculas","dogs","dragons");

***********NOTE: when we use shortcuts and not define keys the default key starts from 0 ! ********
*/

// However, you can also use words for keys. For
// instance, the following statements create an array of state capitals:

    $capitals['CA'] = "Sacramento";
    $capitals['TX'] = "Austin";
    $capitals['OR'] = "Salem";
    

/*
shorctut for the above text key/value pair array: 

        $capitals = array( "CA" => "Sacramento", "TX" => "Austin", "OR" => "Salem" );



        $techers = array ("Phy" => "prksh", "Chem" => "Mahesh");

*/


// Outputting Arrays:
//echo $capitals['TX'];

//echo " <br> the capital of Texas is $capitals{['TX']}";


        /* If you include the array value in a longer echo statement enclosed by double
             quotes, you may need to enclose the array value name in curly braces: */


//echo " <br>The capital of Oragon is {$capitals['OR']} <br>\n";



/*

The print_r output shows the key and the value for each element in the array.
The var_dump output shows the data type, as well as the keys and values.

*/

   //print_r ($capitals);
    //var_dump ($pets);



// For better output use:    
    echo "<pre>";
    print_r ($capitals);
    var_dump ($pets);
    echo "</pre>";  