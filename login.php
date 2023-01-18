<?php
    session_start();
    require('config.php');

    $userid = $_POST['userid'];
    $password = $_POST['password'];

    $qry = "select password,user_name from user where user_id='".$userid."'";

    $result =$conn->query($qry);

    if(mysqli_num_rows($result)>0)
    {
        $row = mysqli_fetch_assoc($result);
        if($password === $row['password'])
        {
            
            $_SESSION['userid']=$userid;
            $_SESSION['username']=$row['user_name'];
            header('location: index.php');
        }
        else
        {
            echo "Incorrect password!";
        }
    }
    else
    {
        echo "Username does not exist!";
    }
?>