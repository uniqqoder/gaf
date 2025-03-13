<?php
define("JWT_SECRET", "your_secret_key");
?>

//User Login & Token Generation (login.php)

<?php
require "config.php";
require "vendor/autoload.php";
use Firebase\JWT\JWT;

$conn = new mysqli("localhost", "root", "", "jwt_db");

function authenticateUser($username, $password) {
    global $conn;
    $stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        $stmt->bind_result($id, $hashed_password);
        $stmt->fetch();
        
        if (password_verify($password, $hashed_password)) {
            return $id;
        }
    }
    return false;
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = json_decode(file_get_contents("php://input"), true);
    $userId = authenticateUser($data["username"], $data["password"]);
    
    if ($userId) {
        $payload = [
            "user_id" => $userId,
            "exp" => time() + (60 * 60) // 1-hour expiration
        ];
        $jwt = JWT::encode($payload, JWT_SECRET, 'HS256');

        echo json_encode(["token" => $jwt]);
    } else {
        http_response_code(401);
        echo json_encode(["error" => "Invalid credentials"]);
    }
}
?>
