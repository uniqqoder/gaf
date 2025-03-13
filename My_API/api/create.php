<?php
require_once "../config/database.php";

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->title)) {
    $query = "INSERT INTO tasks (title, description, status) VALUES (:title, :description, :status)";
    $stmt = $conn->prepare($query);
    
    $stmt->bindParam(":title", $data->title);
    $stmt->bindParam(":description", $data->description);
    $stmt->bindParam(":status", $data->status);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Task created successfully."]);
    } else {
        echo json_encode(["error" => "Failed to create task."]);
    }
} else {
    echo json_encode(["error" => "Title is required."]);
}
?>
