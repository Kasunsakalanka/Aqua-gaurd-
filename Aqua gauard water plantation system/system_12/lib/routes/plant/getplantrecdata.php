<?php

//include function page 
include_once('../../function/plantFunction.php');

//call the class and create an object 
$prdObj = new Plant();

$result = $prdObj -> getlantrecodedata($_GET['id']);


echo($result);


?>