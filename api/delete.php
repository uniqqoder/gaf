//Handles: Deleting a task by ID.
//HTTP Method: DELETE

<?php
require_once "../config/database.php";

$data = json_decode(file_get_contents("php://input"));

if (!empty($data->id)) {
    $query = "DELETE FROM tasks WHERE id = :id";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(":id", $data->id);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Task deleted successfully."]);
    } else {
        echo json_encode(["error" => "Failed to delete task."]);
    }
} else {
    echo json_encode(["error" => "Task ID required."]);
}
?>
