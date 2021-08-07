<?php 

// panggil file yang dibutuhkan
require_once 'session.php';
require_once 'koneksi.php';
require_once 'functions.php';

if(isset($_POST['simpan'])){
	$nama_kepala = $_POST['nama_kepala'];

    $query = mysqli_query($koneksi, "UPDATE tbl_kepala SET kepala = '$nama_kepala' WHERE id = 1");

    if($query){
    	set_flash_message('sukses', 'Data berhasil diubah!');
		header('Location: dashboard.php');
    } else die('gagal'. mysqli_error($koneksi));
}


?>