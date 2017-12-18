<?php
$to = 'deepthygupta@gmail.com';
$subject = 'ONLINE APPOINTMENT';
$headers =  'MIME-Version: 1.0' . "\r\n"; 
$headers .= 'From: Deepthy <info@keralaunani.com>' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 
$message = 'The Message Body';
if (mail($to, $subject, $message, $headers, '-finfo@keralaunani.com')) {
    echo "Success";
} else {
    echo "Failed";
}