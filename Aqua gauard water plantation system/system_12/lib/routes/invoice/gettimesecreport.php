<?php

//include function page 
include_once('../../function/InvoiceFunction.php');

//call the class and create an object 
$prdObj = new Invoice();

$result = $prdObj -> gettimesecreport($_GET['start'],$_GET['end']);


echo($result);


?>