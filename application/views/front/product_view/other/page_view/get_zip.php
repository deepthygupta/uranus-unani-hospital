<?php
$latitude=$_POST['latitude'];
$longitude=$_POST['longitude'];
$url = 'http://api.geonames.org/findNearbyPostalCodesJSON?lat=' . $latitude . '&lng=' . $longitude . '&username=kiran123';
$obj = json_decode(file_get_contents($url), true);
$arr = $obj['postalCodes'];
$qwe = $arr[0];
echo $qwe['postalCode'];
