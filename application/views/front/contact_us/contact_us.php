<?php

ini_set('display_errors', true);
error_reporting(1);
if (!isset($_POST)) {
    echo "You need to fill the form";
}
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$subject = $_POST['subject'];
$to = 'deepthygupta@gmail.com';
$headers = 'From: Uranus Unani Hospital' . "\r\n" .
        'Reply-To: mailing@qproinnovations.com' . "\r\n" .
        'X-Mailer: PHP/' . phpversion();
$message = "<html><body><br>" . $_POST['message'] . "<br><br></body></html>";

if (!mail($to, $subject, $message, $headers, '-fmailing@qproinnovations.com')) {
    echo '<script language="javascript">';
    echo 'alert("Message could not be sent.");';
    echo "window.location = '../home/contact1'";
    echo '</script>';
} else {
    echo '<script language="javascript">';
    echo 'alert("Message has been sent");';
    echo "window.location = '../home/contact1'";
    echo '</script>';
}
?>