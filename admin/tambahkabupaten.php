<?php 

require '../function.php';
session_start();
if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
}

$nama = $_POST['nama'];
$status = $_POST['status'];

$query = "INSERT INTO kabupaten VALUES
            ('','$nama','$status')";
mysqli_query($conn,$query);
$hasilQuery = mysqli_affected_rows($conn);

if($hasilQuery>0){
    echo "
        <script>
            alert('Data Kabupaten Sukses Ditambahkan');
            document.location.href = 'kabupaten.php';
        </script>
        ";
}else{
    echo "
        <script>
            alert('Data Kabupaten Gagal Ditambahkan');
            document.location.href = 'kabupaten.php';
        </script>
        ";
}

?>