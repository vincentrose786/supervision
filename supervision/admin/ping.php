<?php

$fp = @fsockopen("192.168.0.36", PORT, $errno, $err, 0.1);
if (!$fp)
{
echo'<font color="red">Hors ligne</font>';
} else {
echo'<font color="green">En ligne</font>';
}?>