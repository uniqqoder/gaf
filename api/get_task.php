<?php
require_once "../config/database.php";

$id = isset($_GET['id']) ? intval($_GET['id']) : die(json_encode(["error" => "Task ID required"]));

$query = "SELECT * FROM tasks WHERE id = :id";
$stmt = $conn->prepare($query);
$stmt->bindParam(":id", $id);
$stmt->execute();
$task = $stmt->fetch(PDO::FETCH_ASSOC);

if ($task) {
    echo json_encode($task);
} else {
    echo json_encode(["error" => "Task not found"]);
}
?>
