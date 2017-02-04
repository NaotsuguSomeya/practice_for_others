<?php
/*
switch文
*/
$signal = "green";

switch ($signal) {
	case 'red':
		echo "STOP!";
		break;
	case 'blue':
	case 'green':
		echo "GO!";
		break;
	case 'yellow':
		echo "CAUTION!";
		break;

	default:
		echo "error SIGNAL...";
		break;
}
