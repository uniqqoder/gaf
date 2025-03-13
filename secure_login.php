<?php
session_start();
$_SESSION['csrf_token'] = bin2hex(random_bytes(32));
?>
<form method="POST" action="submit.php">
    <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>">
    <input type="text" name="message" placeholder="Your Message">
    <button type="submit">Send</button>
</form>

//2. Validate CSRF Token (submit.php):



session_start();
if ($_POST['csrf_token'] !== $_SESSION['csrf_token']) {
    die("CSRF token validation failed.");
}
echo "Form submitted safely!";

?>