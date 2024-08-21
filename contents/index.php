<?php
require_once "../config/connection.php";
$selectIntro = mysqli_query($koneksi, "SELECT * FROM intro WHERE status=1");
$row = mysqli_fetch_assoc($selectIntro);
// var_dump($row['judulwebsite']);
?>


<?php
include 'layouts/head.php';
?>
<?php
include 'layouts/navbar.php';
?>
<?php
include 'layouts/pricing.php'
?>
<?php
include 'layouts/accordion.php'
?>
<?php
include 'layouts/reviews.php'
?>
<?php
include 'layouts/contact.php'
?>
<?php
include 'layouts/footer.php'
?>
<?php
include 'layouts/body.php';
?>