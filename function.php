<?php 
$conn = mysqli_connect('localhost','root','','covid19');

function query($query){
    global $conn;
    $result = mysqli_query($conn,$query);
    $rows = [];
    while($row = mysqli_fetch_assoc($result)){
        $rows[]=$row;
    }
    return $rows;
}

function api($link){
    $jsonFile = @file_get_contents($link);
    return json_decode($jsonFile,true);
}

?>