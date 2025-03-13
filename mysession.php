<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    // Database connection
    $pdo = new PDO("mysql:host=localhost;dbname=mydb", "root", "");
    // Fetch user details
    $stmt = $pdo->prepare("SELECT id, password FROM users WHERE username = ?");
    $stmt->execute([$username]);
    $user = $stmt->fetch();
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $username;
        $_SESSION['last_activity'] = time(); // Track last activity
        $_SESSION['user_agent'] = $_SERVER['HTTP_USER_AGENT']; // Bind session to browser
        $_SESSION['ip'] = $_SERVER['REMOTE_ADDR']; // Bind session to IP
        header("Location: dashboard.php");
        exit();
    } else {
        echo "Invalid username or password.";
    }
}
// Setting preference
setcookie("theme", "dark", time() + (86400 * 30), "/", "", true, true); // Set dark mode preference
// Store last login time
setcookie("last_login", time(), time() + (86400 * 30), "/", "", true, true);
$theme = isset($_COOKIE['theme']) ? $_COOKIE['theme'] : 'light';
echo "<body class='$theme'>";
?>