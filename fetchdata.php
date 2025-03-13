<?php
session_start();
header("Content-Type: application/json");
require "db_config.php"; // Include database connection
$max_requests = 10;
$time_window = 60; // 60 seconds
$ip_address = $_SERVER['REMOTE_ADDR'];
$current_time = time();
// Store request timestamps in session
if (!isset($_SESSION['api_requests'])) {
    $_SESSION['api_requests'] = [];
}
// Remove old requests
$_SESSION['api_requests'] = array_filter($_SESSION['api_requests'], function ($timestamp) use ($current_time, $time_window) {
    return ($current_time - $timestamp) < $time_window;
});
// Check rate limit
if (count($_SESSION['api_requests']) >= $max_requests) {
    echo json_encode(["status" => "error", "message" => "Too many requests. Try again later."]);
    http_response_code(429);
    exit;
}
// Log new request
$_SESSION['api_requests'][] = $current_time;
// Fetch data from the database
try {
    $pdo = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->query("SELECT id, name, email FROM users");
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode(["status" => "success", "data" => $users]);
} catch (PDOException $e) {
    echo json_encode(["status" => "error", "message" => "Database error"]);
}
?>
