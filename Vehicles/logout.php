<?php
ob_start();
session_start();
header("Location: Vlogin.php");
session_destroy();
?>