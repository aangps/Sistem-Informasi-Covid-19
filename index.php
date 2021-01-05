<?php 

require 'function.php';

// Pengambilan data dari API
$row = api('https://api.kawalcorona.com/indonesia/provinsi');
if(is_array($row)){
    foreach($row as $r){
        if($r['attributes']['FID']==17){
            $dataBali = $r['attributes'];
            break 1;
        }
    }
}else{
    $dataBali['Kasus_Posi'] = 'NULL';
    $dataBali['Kasus_Meni'] = 'NULL';
    $dataBali['Kasus_Semb'] = 'NULL';
}
// Pengambilan data rumah sakit
$rumahSakit = query("SELECT * FROM rumah_sakit");
// pengambilan data pendatang terakhir
$pendatang = query("SELECT
                    b.nama AS kabupaten,
                    b.redzone AS redzone,
                    d.nama AS masuk,
                    a.tanggal_masuk AS tanggal
                    FROM
                    pendatang a
                    INNER JOIN kabupaten b ON a.id_kabupaten = b.id
                    INNER JOIN petugas c ON a.id_petugas = c.id
                    INNER JOIN perbatasan d ON c.id_perbatasan = d.id
                    ORDER BY
                    a.tanggal_masuk DESC
                    LIMIT 10;");
// pengambilan data jumlah pendatang dan yang ODP
$odpPendatang = query("SELECT
                        COUNT( nama ) AS pendatang,
                        (
                        SELECT
                        COUNT( a.nama )
                        FROM
                        pendatang a
                        INNER JOIN kabupaten b ON a.id_kabupaten = b.id
                        WHERE
                        b.redzone = 'iya') as odp
                        FROM
                        pendatang;");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ILKOM 2018</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/font-awesome/css/all.min.css">
    <!-- BOOTSTRAP CSS -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="icon-petugas">
        <a href="login.php" target="blank"><i class="fas fa-sign-in-alt logo"></i></a>
    </div>
    <div class="container">
        <!-- Header Jumbotron -->
        <div class="jumbotron text-center mb-0">
            <div class=" container">
                <h1 class="display-3 text-center font-weight-bold">SARS-COV BALI</h1>
                <p class="lead m-0 text-center">Bersatu Melawan Covid-19</p>
            </div>
        </div>
        <!-- Header Card Jumlah Pasien -->
        <div class="card shadow">
            <div class="card-header mb-3">
                <h3 class="card-title text-center title-rs">Data Bali Terkini</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <!-- Card Positif -->
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-4 mb-3">
                        <div class="card shadow-sm">
                            <div class="card-header text-center">POSITIF</div>
                            <div class="card-body pl-4 pr-5 pb-3">
                                <div class="d-flex">
                                    <div class="">
                                        <p class=" mb-0">TOTAL POSITIF</p>
                                        <h2 class="mb-0 number-font"><?= $dataBali['Kasus_Posi']?></h2>
                                        <p class=" mb-0">ORANG</p>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="icon"><i class="far fa-sad-tear"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card Meninggal -->
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-4 mb-3">
                        <div class="card shadow-sm">
                            <div class="card-header text-center">MENINGGAL</div>
                            <div class="card-body pl-4 pr-5 pb-3">
                                <div class="d-flex">
                                    <div class="">
                                        <p class=" mb-0">TOTAL MENINGGAL</p>
                                        <h2 class="mb-0 number-font"><?= $dataBali['Kasus_Meni']?></h2>
                                        <p class=" mb-0">ORANG</p>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="icon"><i class="far fa-sad-cry"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card Sembuh -->
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-4 mb-3">
                        <div class="card shadow-sm">
                            <div class="card-header text-center">SEMBUH</div>
                            <div class="card-body pl-4 pr-5 pb-3">
                                <div class="d-flex">
                                    <div class="">
                                        <p class=" mb-0">TOTAL SEMBUH</p>
                                        <h2 class="mb-0 number-font"><?= $dataBali['Kasus_Semb']?></h2>
                                        <p class=" mb-0">ORANG</p>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="icon"><i class="far fa-smile-beam"></i></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-md-center">
                    <!-- Card Jumlah Pendatang -->
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-4 mb-3">
                        <div class="card shadow-sm">
                            <div class="card-header text-center">PENDATANG</div>
                            <div class="card-body pl-4 pr-5 pb-3">
                                <div class="d-flex">
                                    <div class="">
                                        <p class=" mb-0">TOTAL PENDATANG</p>
                                        <h2 class="mb-0 number-font"><?= $odpPendatang[0]['pendatang'] ?></h2>
                                        <p class=" mb-0">ORANG</p>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="icon"><i class="far fa-smile"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card ODP -->
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-4 mb-3">
                        <div class="card shadow-sm">
                            <div class="card-header text-center">PENDATANG ODP</div>
                            <div class="card-body pl-4 pr-5 pb-3">
                                <div class="d-flex">
                                    <div class="">
                                        <p class=" mb-0">TOTAL PENDATANG ODP</p>
                                        <h2 class="mb-0 number-font"><?= $odpPendatang[0]['odp'] ?></h2>
                                        <p class=" mb-0">ORANG</p>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="icon"><i class="far fa-frown"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p class="note">* Pendatang ODP merupakan pendatang yang berasal dari kawasan RedZone</p>
            </div>
        </div>
        <!-- Pendatang Masuk -->
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-14 mt-5">
                <div class="card shadow">
                    <div class="card-header ">
                        <h3 class="card-title text-center title-rs">Daftar Pendatang Terakhir</h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover mb-0 text-nowrap">
                                <thead>
                                    <tr>
                                        <th>Asal Kabupaten</th>
                                        <th>Status Redzone</th>
                                        <th>Tempat Masuk</th>
                                        <th>Tanggal dan Jam Masuk</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                        foreach($pendatang as $p) : 
                                    ?>
                                    <tr>
                                        <td><?= $p['kabupaten'] ?></td>
                                        <td><?= $p['redzone'] ?></td>
                                        <td><?= $p['masuk'] ?></td>
                                        <td><?= $p['tanggal'] ?></td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Rumah Sakit Rujukan -->
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-14  my-5">
                <div class="card shadow">
                    <div class="card-header ">
                        <h3 class="card-title text-center title-rs">Daftar Rumah Sakit Rujukan Provinsi Bali</h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover mb-0 text-nowrap">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Nama Rumah Sakit</th>
                                        <th>Nomor Telepon</th>
                                        <th>Alamat</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                        $i=1;
                                        foreach($rumahSakit as $rs) : 
                                    ?>
                                    <tr>
                                        <td><?= $i++ ?></td>
                                        <td><?= $rs['nama'] ?></td>
                                        <td><?= $rs['telp'] ?></td>
                                        <td><?= $rs['alamat'] ?></td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer text-center">Made with <i class="fas fa-heart"></i> by <a href="aangps01.com">aangps01</a></div>
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
    <script src="script.js"></script>
</body>

</html>