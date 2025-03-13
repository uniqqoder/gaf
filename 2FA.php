<?php
session_start();
require 'vendor/autoload.php'; // For PHPMailer (if using email)

function generateOTP($length = 6) {
    return rand(pow(10, $length - 1), pow(10, $length) - 1);
}

$otp = generateOTP();
$_SESSION['otp'] = $otp;
$_SESSION['otp_expiry'] = time() + 300; // OTP valid for 5 minutes

// Sending via Email (Example using PHPMailer)
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true);
try {
    $mail->setFrom('your_email@example.com', 'Your App');
    $mail->addAddress('user@example.com'); // User's email
    $mail->Subject = "Your OTP Code";
    $mail->Body = "Your OTP is: $otp. It expires in 5 minutes.";
    $mail->send();
} catch (Exception $e) {
    echo "OTP Email could not be sent. Error: {$mail->ErrorInfo}";
}
?>
