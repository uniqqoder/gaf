<?php
//Guests can only view pages without modifying data.

function isGuest() {
    return !isset($_SESSION['role']) || $_SESSION['role'] === 'guest';
}
?>