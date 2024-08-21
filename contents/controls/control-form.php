<?php
include "../../config/connection.php";

if (isset($_POST['kirim'])) {
    $id = $_POST['id'];
    $nama = htmlspecialchars($_POST['nama']);
    $email = htmlspecialchars($_POST['email']);
    $phone = htmlspecialchars($_POST['phone']);
    $question = htmlspecialchars($_POST['question']);
    $deskripsi = htmlspecialchars($_POST['deskripsi']);

    // echo "INI Nama " . $nama . "<br>";
    // echo "INI Email " . $email . "<br>";
    // echo "INI Phone " . $phone . "<br>";
    // echo "INI Question " . $question . "<br>";
    // echo "INI Deskripsi " . $deskripsi . "<br>";

    $fethEmail = mysqli_query($koneksi, "SELECT * FROM forms WHERE email = '$email'");
    if (mysqli_num_rows($fethEmail) > 0) {
        header("location: ../index.php?status=emailAlready#contact");
    } else {
        $queryInsert = mysqli_query($koneksi, "INSERT INTO forms (id_intro,email,nama,phone,question,deskripsi,created_at) VALUES ($id,'$email','$nama','$phone','$question','$deskripsi',now())");
    };

    if ($queryInsert) {
        header("location: ../index.php?status=success#contact");
        exit;
    }
}
