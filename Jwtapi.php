<?php
require "config.php";
require "vendor/autoload.php";
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

function jwtMiddleware($requiredRole = null) {
    $headers = getallheaders();

    // Check if Authorization header exists
    if (!isset($headers['Authorization'])) {
        http_response_code(401);
        die(json_encode(["error" => "Unauthorized - No token provided"]));
    }

    $token = str_replace("Bearer ", "", $headers['Authorization']);

    try {
        // Decode the JWT token
        $decoded = JWT::decode($token, new Key(JWT_SECRET, 'HS256'));

        // Check role-based access if a required role is specified
        if ($requiredRole && (!isset($decoded->role) || $decoded->role !== $requiredRole)) {
            http_response_code(403);
            die(json_encode(["error" => "Forbidden - Insufficient permissions"]));
        }

        return $decoded;
    } catch (Exception $e) {
        http_response_code(401);
        die(json_encode(["error" => "Invalid or expired token"]));
    }
}
?>