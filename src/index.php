<?php
  if (!isset($_SESSION) || empty($_SESSION)) {
      session_start();
  }
  require_once './config/config.php';
  require_once 'app/init.php';

  new App;
  // phpinfo();
?>