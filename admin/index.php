<?php 

require '../function.php';
session_start();
if(!isset($_SESSION['login'])){
    header("Location: ../login.php");
    exit;
}

// nama tempat masuk
$idPetugas = $_SESSION['id_petugas'];
$namaTempat = query("SELECT
                    b.nama AS perbatasan
                    FROM
                    petugas a
                    INNER JOIN perbatasan b ON a.id_perbatasan = b.id
                    WHERE
                    a.id = $idPetugas");
// memanggil data pendatang
$rows = query("SELECT
                a.nik,
                a.nama,
                a.tanggal_masuk as tanggal,
                e.nama AS kabupaten,
                d.hasil
                FROM
                pendatang a
                INNER JOIN kabupaten e ON a.id_kabupaten = e.id
                INNER JOIN hasil_test b ON a.id_hasil_test = b.id
                INNER JOIN instansi c ON b.id_instansi = c.id
                INNER JOIN lab d ON c.id_lab = d.id
                ORDER BY tanggal DESC;");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $namaTempat[0]['perbatasan'] ?></title>
    <!-- BOOTSTRAP CSS -->
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-sm-3 col-md-2 mr-0 text-center" href="#"><?= $namaTempat[0]['perbatasan'] ?></a>
        <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap ">
                <a class="nav-link " href="../logout.php">Sign out</a>
            </li>
        </ul>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <!-- menu sidebar -->
                        <li class="nav-item">
                            <a class="nav-link active" href="index.php">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-users">
                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="9" cy="7" r="4"></circle>
                                    <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                    <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                </svg>
                                Daftar Pendatang
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="kabupaten.php">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="feather feather-file-text">
                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                    <polyline points="14 2 14 8 20 8"></polyline>
                                    <line x1="16" y1="13" x2="8" y2="13"></line>
                                    <line x1="16" y1="17" x2="8" y2="17"></line>
                                    <polyline points="10 9 9 9 8 9"></polyline>
                                </svg>
                                Daftar Kabupaten
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <h2>Data Pendatang</h2>
                <button type="button" class="btn btn-primary mb-2" data-toggle="modal"
                    data-target="#exampleModal">Tambah Data</button>
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="tambahpendatang.php">
                                    <!-- data pendatang -->
                                    <div class="form-group">
                                        <label for="nik" class="col-form-label">NIK</label>
                                        <input type="number" name="nik" id="nik" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="namaPendatang" class="col-form-label">Nama Pendatang</label>
                                        <input type="text" name="namaPendatang" id="namaPendatang" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="jk" class="col-form-label">Jenis Kelamin</label>
                                        <select name="jk" id="jk" class="form-control">
                                            <option value=""></option>
                                            <option value="L">Laki - Laki</option>
                                            <option value="P">Perempuan</option>
                                        </select>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="kabupaten" class="col-form-label">Kabupaten</label>
                                        <select name="kabupaten" id="kabupaten" class="form-control">
                                            <?php $kabupaten = query("SELECT * FROM kabupaten ORDER BY nama") ?>
                                            <option value=""></option>
                                            <?php foreach($kabupaten as $k) : ?>
                                            <option value="<?=$k['id']?>"><?= $k['nama'] ?>
                                            </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <hr style="border: 2px solid">
                                    <!-- data instansi -->
                                    <div class="form-group">
                                        <label for="namaInstansi" class="col-form-label">Nama Instansi</label>
                                        <input type="text" name="namaInstansi" id="namaInstansi" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="namaDokter" class="col-form-label">Nama Dokter</label>
                                        <input type="text" name="namaDokter" id="namaDokter" class="form-control">
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="tanggalTest" class="col-form-label">Tanggal Test</label>
                                        <input type="date" class="form-control" name="tanggalTest" id="tanggalTest">
                                    </div>
                                    <hr style="border: 2px solid">
                                    <!-- data lab -->
                                    <div class="form-group">
                                        <label for="namaLab" class="col-form-label">Nama Lab</label>
                                        <input type="text" name="namaLab" id="namaLab" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="hasilTest" class="col-form-label">Hasil Test Lab</label>
                                        <select name="hasilTest" id="hasilTest" class="form-control">
                                            <option value=""></option>
                                            <option value="positif">Positif</option>
                                            <option value="reaktif">Reaktif</option>
                                            <option value="negatif" selected>Negatif</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="keterangan" class="col-form-label">Keterangan</label>
                                        <input type="text" name="keterangan" id="keterangan" class="form-control">
                                    </div>
                                    <!-- sumbit data -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>NIK</th>
                                <th>Nama Pendatang</th>
                                <th>Hasil</th>
                                <th>Kabupaten</th>
                                <th>Tanggal dan Jam Masuk</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $i=1;
                                foreach($rows as $row) : 
                            ?>
                            <tr>
                                <td><?= $i++ ?></td>
                                <td><?= $row['nik'] ?></td>
                                <td><?= $row['nama'] ?></td>
                                <td><?= $row['hasil'] ?></td>
                                <td><?= $row['kabupaten'] ?></td>
                                <td><?= $row['tanggal'] ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>
    </nav>
    <!-- Jquery Js-->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <!-- Popper Js -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <!-- Bootstrap js -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
    <!-- Custom Js -->
    <script src="../assets/js/script.js"></script>
</body>

</html>