<?php 

require '../function.php';
session_start();
if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
}

$id = $_GET['id'];
$status = $_GET['status'];

if($status == 'iya'){
    $query = "UPDATE kabupaten SET redzone='tidak' WHERE id = $id";
}else{
    $query = "UPDATE kabupaten SET redzone='iya' WHERE id = $id";
}

mysqli_query($conn,$query);
$hasil = mysqli_affected_rows($conn);

if($hasil>0){
echo "
    <script>
        alert('Status Berhasil Diubah');
        document.location.href = 'kabupaten.php';
    
    </script>";
}else{
    echo "
    <script>
        alert('Status gagal Diubah');
        document.location.href = 'kabupaten.php';
    </script>";
}
?>