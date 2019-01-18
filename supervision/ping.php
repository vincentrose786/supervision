<?php 
num_disque: 

$drive='d:'; 
$ret=exec("disk_free_space ( string $drive )",$val); 
if(preg_match('#[^\s]+$#',$val[1],$num_disque)) 
{ 
echo $num_disque[0]; 
} 

?>