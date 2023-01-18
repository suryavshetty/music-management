<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
<?php
require('config.php');

$val = $_POST['key'];

$output="";

/*ORDER BY TRACK NAME*/
if($val == 'track')
{
    $qry = "select * from track order by track_name";
    $result = $conn->query($qry);

    if(mysqli_num_rows($result)>0)
    {
        $output.="<table class='table1'>";
        $output.="<tr>
                    <th>Track ID</th>
                    <th>Track Name</th>
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
}

/*ORDER BY ARTIST NAME*/
if($val == 'artist')
{
    $output='';
    $qry = "select * from artist order by artist_name";
    $result = $conn->query($qry);

    if(mysqli_num_rows($result)>0)
    {
        $output.="<table class='table1'>";
        $output.="<tr>
                    <th>Artist ID</th>
                    <th>Artist Name</th>
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
}
/*ORDER BY ALBUM NAME*/
if($val == 'album')
{
    $output='';
    $qry = "select * from album order by album_name";
    $result = $conn->query($qry);

    if(mysqli_num_rows($result)>0)
    {
        $output.="<table class='table1'>";
        $output.="<tr>
                    <th>Album ID</th>
                    <th>Album Name</th>
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
}

$conn->close();
?>
</body>
</html>