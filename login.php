<?php 

require 'function.php';
session_start();

if(isset($_POST['submit'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $result = mysqli_query($conn,"SELECT * FROM petugas WHERE username='$username' AND password='$password'");
    if(mysqli_num_rows($result)===1){
            $_SESSION['login']=true;
            $username = mysqli_fetch_assoc($result);
            $_SESSION['id_petugas']=$username['id'];
            header("Location: admin/index.php");
            exit;
    }
    $error = true;
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Pegawai</title>
    <!-- BOOTSTRAP CSS -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }

        .form-signin .checkbox {
            font-weight: 400;
        }

        .form-signin .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }

        .form-signin .form-control:focus {
            z-index: 2;
        }

        .form-signin input[type="username"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
</head>

<body class="text-center">
    <form action="login.php" method="POST" class="form-signin">
        <h1 class="mb-3">Login Petugas</h1>
        <?php if(isset($error)) : ?>
        <p style='color:red'>Username / Password Salah</p>
        <?php endif; ?>
        <label for="username" class="sr-only">Username</label>
        <input type="text" name="username" id="username" class="form-control mb-2" placeholder="Masukkan Username...">
        <label for="password" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control mb-3" id="password"
            placeholder="Masukkan password...">
        <button class="btn btn-lg btn-primary btn-block " type="submit" name="submit">Login</button>
    </form>
</body>

</html>