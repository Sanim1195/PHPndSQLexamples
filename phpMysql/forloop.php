<?php
        /*
        FOR LOOP : Sets up a counter; repeats a block of statements until
        the counter reaches a specified number
        */

        /*
        $capitals["AK"] = "Juneau";
        $capitals["TX"] = "Austin";
        $capitals["CA"] = "Sacramanto";
        $capitals["MT"] = "Helena";
        $capitals["NM"] = "Sanata Fe";
        $capitals["AZ"] = "Phoenix";
        $capitals["NV"] = "Carson City";
        $capitals["CO"] = "Denver";
        $capitals["OR"] = "Salem";
        $capitals["WY"] = "Cheyenne";
        $capitals["MI"] = "Lansing";
        $capitals["MN"] = "St.Paul";
        $capitals["UT"] = "Salt Lake City";
        $capitals["ID"] = "Boise";
        $capitals["KS"] = "Topeka";
        $capitals["NE"] = "Lincon";
        $capitals["SD"] = "Pierre";
        $capitals["WA"] = "Olympia";
        $capitals["ND"] = "Bismark";
        $capitals["FL"] = "Tallahassee";
        $capitals["OK"] = "Oklohoma City";
        $capitals["MO"] = "Jefferson City";
        $capitals["GA"] = "Atlanta";
        $capitals["WI"] = "Madison";
        $capitals["IL"] = "springfield";
        $capitals["IA"] = "Des Moines";
        $capitals["NY"] = "Albany";
        $capitals["NC"] = "Raleigh";
        $capitals["VA"] = "Richmond";
        $capitals["AR"] = "Little Rock";
        $capitals["AL"] = "Montgomery";
        $capitals["LA"] = "Baton Rouge";*/

        $capitals["TX"] = "Austin";
        $capitals["AK"] = "Juneau";
        $capitals["CA"] = "Sacramanto";
        $capitals["MT"] = "Helena";
        $capitals["NM"] = "Sanata Fe";
        $capitals["AZ"] = "Phoenix";
        $capitals["NV"] = "Carson City";
        $capitals["CO"] = "Denver";
        $capitals["OR"] = "Salem";
        $capitals["WY"] = "Cheyenne";
        $capitals["MI"] = "Lansing";
        $capitals["MN"] = "St.Paul";
        $capitals["UT"] = "Salt Lake City";
        $capitals["ID"] = "Boise";
        $capitals["KS"] = "Topeka";
        $capitals["NE"] = "Lincon";
        $capitals["SD"] = "Pierre";
        $capitals["WA"] = "Olympia";
        $capitals["ND"] = "Bismark";
        $capitals["FL"] = "Tallahassee";
        $capitals["OK"] = "Oklohoma City";
        $capitals["MO"] = "Jefferson City";
        $capitals["GA"] = "Atlanta";
        $capitals["WI"] = "Madison";
        $capitals["IL"] = "springfield";
        $capitals["IA"] = "Des Moines";
        $capitals["NY"] = "Albany";
        $capitals["NC"] = "Raleigh";
        $capitals["VA"] = "Richmond";
        $capitals["AR"] = "Little Rock";
        $capitals["AL"] = "Montgomery";
        $capitals["LA"] = "Baton Rouge";
    echo "<pre> <br>";
    var_dump($capitals);
    echo "</pre> <br>";       
sort($capitals);
echo "<pre> <br>";
print_r($capitals);
echo "</pre> <br>";

/*The basic for loop sets up a variable — for example, a variable called $i, 
that is a counter. This variable has a value during each loop. The variable $i
can be used in the block of statements that is repeating.*/

for ($i=0; $i <15 ; $i++) { 
   echo "$i- $capitals[$i] <br> \n";
}

            //OR

//You can ask PHP how many values are in the array and use that value in your for loop count or sizeof
/*for ($i=0; $i <count($capitals); $i++) { 
    echo "$capitals[$i] <br> \n";
}*/
