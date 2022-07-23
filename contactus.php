<?php
    
    $connection = mysqli_connect('localhost','root');
    mysqli_select_db($connection,"protrack");

    $user = $_get['user'];
    $email = $_get['email'];
    $message = $_get['message'];
    $query = "INSERT INTO 'userinfo'('user','email','message') VALUES ('$user','$email','$message')";

    mysqli_query($connection,$query);

    echo "Message sent";

?>
