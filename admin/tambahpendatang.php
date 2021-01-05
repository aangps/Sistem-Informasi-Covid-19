<?php 

require '../function.php';
session_start();

$idPetugas = $_SESSION['id_petugas'];

$nik = intval($_POST['nik']);
$namaPendatang = $_POST['namaPendatang'];
$jenisKelamin = $_POST['jk'];
$kabupaten = intval($_POST['kabupaten']);

$namaInstansi = $_POST['namaInstansi'];
$namaDokter = $_POST['namaDokter'];
$tanggalTest = $_POST['tanggalTest'];

$namaLab = $_POST['namaLab'];
$hasilTest = $_POST['hasilTest'];
$keterangan = $_POST['keterangan'];

// query 1
$query = "INSERT INTO lab VALUES
            ('','$namaLab','$hasilTest','$keterangan')";
mysqli_query($conn,$query);
$hasilQuery1 = mysqli_affected_rows($conn);
// query 2
$idLab = intval(query("SELECT id FROM lab ORDER BY id DESC limit 1;")[0]['id']);

// query 3
$query = "INSERT INTO instansi VALUES
            ('','$namaInstansi','$namaDokter',$idLab)";
mysqli_query($conn,$query);
$hasilQuery2 = mysqli_affected_rows($conn);
// query 4
$idInstansi = intval(query("SELECT id FROM instansi ORDER BY id DESC limit 1;")[0]['id']);

// query 5
$query = "INSERT INTO hasil_test VALUES
            ('',$idInstansi,'$tanggalTest')";
mysqli_query($conn,$query);
$hasilQuery3 = mysqli_affected_rows($conn);
// query 6
$idTest = intval(query("SELECT id FROM hasil_test ORDER BY id DESC limit 1;")[0]['id']);

// query 7
$query = "INSERT INTO pendatang(nik,nama,jenis_kelamin,id_kabupaten,id_petugas,id_hasil_test) VALUES
            ($nik,'$namaPendatang','$jenisKelamin',$kabupaten,$idPetugas,$idTest)";
mysqli_query($conn,$query);
$hasilQuery4 = mysqli_affected_rows($conn);

if($hasilQuery4>0){
    echo "
        <script>
            alert('Data Pendatang Sukses Ditambahkan');
            document.location.href = 'index.php';
        </script>
        ";
}else{
echo "
        <script>
            alert('Data Pendatang Gagal Ditambahkan');
            document.location.href = 'index.php';
        </script>
";
}

?>