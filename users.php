<?php
//Regular users can only update their own profile.

function updateProfile($userId, $newPassword) {
    global $conn;
    if ($_SESSION['user_id'] != $userId) {
        die("Unauthorized action!");
    }
    $hashed_password = password_hash($newPassword, PASSWORD_DEFAULT);
    $stmt = $conn->prepare("UPDATE users SET password = ? WHERE id = ?");
    $stmt->bind_param("si", $hashed_password, $userId);
    return $stmt->execute();
}
?>
