<?php
require_once "../config/database.php";

$query = "SELECT * FROM tasks";
$stmt = $conn->prepare($query);
$stmt->execute();
$tasks = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($tasks);
?>
