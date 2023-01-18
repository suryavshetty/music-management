<!DOCTYPE html>
<html>
    <head>
        <link href="style.css">
        <script src="myscript.js"></script>
    </head> 

<?php
require('config.php');
$val = $_POST['key'];
$qry = "select * from ".$val;
$result = $conn->query($qry);
$output="";
if(mysqli_num_rows($result)>0)
{
    /*TRACK*/
    if($val == 'track')
    {
        $output.="<table class='table1'>";
        $output.="<tr>
                    <th>Track ID</th>
                    <th id='trackname'><a style='text-decoration: none; color: black;' href='#'>Track Name</a></th>
                    <th>Playtime(mins)</th>
                    <th>Link</th>
                </tr>";
        while($row = mysqli_fetch_assoc($result))
        {
            $output.="<tr>";
            $output.="<td align-center>".$row['track_id']."</td>";
            $output.="<td align-center>".$row['track_name']."</td>";
            $output.="<td align-center>".$row['playtime_min']."</td>";
            $link = $row['track_link'];
            $output.="<td align-center><a style='color:black;' href='$link'>link</a></td>";
            $output.="</tr>";
        }
        $output.="</table>";
        echo $output;
    }

    /*ARTIST*/
    if($val == 'artist')
    {
        $output.="<table class='table1'>";
        $output.="<tr>
                    <th>Artist ID</th>
                    <th id='artistname'><a style='text-decoration: none; color: black;' href='#'>Artist Name</a></th>
                </tr>";
        while($row = mysqli_fetch_assoc($result))
        {
            $output.="<tr>";
            $output.="<td align-center>".$row['artist_id']."</td>";
            $output.="<td align-center>".$row['artist_name']."</td>";
            $output.="</tr>";
        }
        $output.="</table>";
        echo $output;
    }
    /*ALBUM*/
    if($val == 'album')
    {
        $output.="<table class='table1'>";
        $output.="<tr>
                    <th>Album ID</th>
                    <th id='albumname'><a style='text-decoration: none; color: black;' href='#'>Album Name</a></th>
                </tr>";
        while($row = mysqli_fetch_assoc($result))
        {
            $output.="<tr>";
            $output.="<td align-center>".$row['album_id']."</td>";
            $output.="<td align-center>".$row['album_name']."</td>";
            $output.="</tr>";
        }
        $output.="</table>";
        echo $output;
    }
    
    $conn->close();
}
?>