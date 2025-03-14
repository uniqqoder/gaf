//Handles: Updating an existing task.
//HTTP Method: PUT

<?php
require_once "../config/database.php";

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->id) && !empty($data->title)) {
    $query = "UPDATE tasks SET title = :title, description = :description, status = :status WHERE id = :id";
    $stmt = $conn->prepare($query);
    
    $stmt->bindParam(":id", $data->id);
    $stmt->bindParam(":title", $data->title);
    $stmt->bindParam(":description", $data->description);
    $stmt->bindParam(":status", $data->status);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Task updated successfully."]);
    } else {
        echo json_encode(["error" => "Failed to update task."]);
    }
} else {
    echo json_encode(["error" => "ID and title are required."]);
}
?>
