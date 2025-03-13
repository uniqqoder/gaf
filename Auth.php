<?php
use Illuminate\Support\Facades\RateLimiter;

public function login(Request $request)
{
    $key = 'login-attempts-' . $request->ip();
    if (RateLimiter::tooManyAttempts($key, 5)) {
        return response()->json(['error' => 'Too many failed attempts. Try again later.'], 429);
    }

    if (!Auth::attempt($request->only('email', 'password'))) {
        RateLimiter::hit($key, 300); // Lock for 5 minutes
        return response()->json(['error' => 'Invalid credentials'], 401);
    }

    RateLimiter::clear($key);
    return response()->json(['message' => 'Login successful']);
}
?>