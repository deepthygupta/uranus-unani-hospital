<?php
ini_set('display_errors',  true);
error_reporting(1);
require 'PHPMailer/PHPMailerAutoload.php';

if(!isset($_POST['submit']))
{
echo "You need to fill the form";
}
$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$subject=$_POST['subject'];
$message=$_POST['message'];

$to = 'arsheena.qproinnovations@gmail.com';
$mail = new PHPMailer();

//$mail->SMTPDebug = 3;                               // Enable verbose debug output

$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'md-in-26.webhostbox.net';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'mailing@qproinnovations.com';                 // SMTP username
$mail->Password = 'VTC9ZE)GvLcM';                           // SMTP password
$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 465;                                    // TCP port to connect to
//$mail->SMTPDebug = 2;
$mail->setFrom('mailing@qproinnovations.com', $name);
$mail->addAddress($to, $name);     // Add a recipient
             // Name is optional
//$mail->addReplyTo('info@example.com', 'Information');
//$mail->addCC('ambaditradingekm@gmail.com');
//$mail->addBCC('bcc@example.com');

//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
$mail->isHTML(true);                                  // Set email format to HTML

$mail->Subject = 'Contact Us';
$mail->Body    = <<<EOD
        
        <table cellspacing="0" cellpadding="1" border="1">
            <tbody>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Name: </td>
                    <td style="padding: 5px 10px;">$name</td>
                </tr>
              
                <tr>
                    <td style="padding: 5px 10px;" width="150">Email: </td>
                    <td style="padding: 5px 10px;">$email</td>
                </tr>
				<tr>
                    <td style="padding: 5px 10px;" width="150">phone: </td>
                    <td style="padding: 5px 10px;">$phone</td>
                </tr>
				<tr>
                    <td style="padding: 5px 10px;" width="150">subject: </td>
                    <td style="padding: 5px 10px;">$subject</td>
                </tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Message: </td>
                    <td style="padding: 5px 10px;">$message</td>
                </tr>
            </tbody>
        </table>
        
EOD;
//$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
		echo '<script language="javascript">';
echo 'alert("Message could not be sent.");';

echo "window.location = './'";
echo '</script>';
   
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} 
else {
	echo '<script language="javascript">';
echo 'alert("Message has been sent");';
// Thank you for subscribing! Stay tuned for our weekly newsletters. 
echo "window.location = './'";
echo '</script>';
}
?>