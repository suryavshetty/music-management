<?php
    session_start();
    require('config.php');


    $userid=$_POST['userid'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $confirmpassword=$_POST['confirm'];

    if($password == $confirmpassword)
    {
        $qry="select * from user where user_id = '$userid'";
        $result = $conn->query($qry);
        if(mysqli_num_rows($result)>0)
        {
            echo "the user id already exists, choose a different one!";

        }
        else
        {
            $qry = "insert into user values('$userid','$username','$password')";
            $conn->query($qry);
            
            $_SESSION['userid']=$userid;
            $_SESSION['username']=$username;
            header('location: index.php');
        }
    }
    else
    {
        echo "Password and confirm password do not match";
    }
    
?>