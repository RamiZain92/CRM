<?php

session_start();
if (isset($_SESSION['user'])) {
  header('Location:  ./views/index.php ');
  die;
} else {
  header('Location:  ./login.php ');
  die;
}
