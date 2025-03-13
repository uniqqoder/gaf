<?php
require "config.php";
require "vendor/autoload.php";
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

function validateJWT() {
    $headers = getallheaders();
    
    if (!isset($headers["Authorization"])) {
        http_response_code(401);
        die(json_encode(["error" => "Unauthorized"]));
    }

    $token = str_replace("Bearer ", "", $headers["Authorization"]);

    try {
        $decoded = JWT::decode($token, new Key(JWT_SECRET, 'HS256'));
        return $decoded;
    } catch (Exception $e) {
        http_response_code(401);
        die(json_encode(["error" => "Invalid Token"]));
    }
}
?>
