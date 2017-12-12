<?php
/**
 * Created by PhpStorm.
 * User: ASWIN
 * Date: 30-Jun-17
 * Time: 12:02 PM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Sms_model extends CI_Model
{
    function send_sms($numbers='',$message=''){
        // Authorisation details.
        $username = "rawsqueezed@gmail.com";
        $hash = "9ec013d03166ab4baa2b1719107add1cdfc51370c82f50c6dec8759228dd6613";

        // Config variables. Consult http://api.textlocal.in/docs for more info.
        $test = "0";

        // Data for text message. This is the text message data.
        $sender = "TXTLCL"; // This is who the message appears to be from.
        $no = "7510150150,7510140140,7510160160,".$numbers; // A single number or a comma-seperated list of numbers
        //$message = "This is a test message from the PHP API script.";
        // 612 chars or less
        // A single number or a comma-seperated list of numbers
        $message = urlencode($message);
        $data = "username=" . $username . "&hash=" . $hash . "&message=" . $message . "&sender=" . $sender . "&numbers=" . $no . "&test=" . $test;
        $ch = curl_init('http://api.textlocal.in/send/?');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch); // This is the result from the API

        /*if (curl_error($ch)) {
            echo 'error:' . curl_error($ch);
        } else {
            echo $result;
        }*/
        curl_close($ch);
    }
}