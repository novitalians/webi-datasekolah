<?php 

// panggil file yang dibutuhkan
require_once '../session.php';
require_once '../koneksi.php';
require_once '../functions.php';

if (!isset($_SESSION['auth'])) {
	set_flash_message('gagal', 'Anda harus login dulu!');
	header('Location: login.php');
}

if(isset($_POST['simpan'])){
	// print_r($_POST);
	$id = $_POST['id'];
	$nama_kelas = $_POST['kelas'];
	$wali_kelas = $_POST['wali_kelas'];
	$tahun_ajaran = $_POST['tahun_ajaran'];
	$semester = $_POST['semester'];

	$query = mysqli_query($koneksi, "INSERT INTO tbl_kelas (id, kelas, wali_kelas, tahun_ajaran, semester) VALUES ($id, '$nama_kelas', '$wali_kelas', '$tahun_ajaran', '$semester')");

	if($query){
		set_flash_message('sukses', 'Data berhasil ditambahkan!');
		header('Location: index.php');
	} else die('gagal!' . mysqli_error($koneksi));
} else {
	header('Location: tambah.php');
}

?>