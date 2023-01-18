
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
    <?php
    require('config.php');

    $val = $_POST['key'];

    /*WARNING! THE BELOW QUERIES ONLY SEARCHES FOR AN ARTIST NAME IF THERE IS NO TRACK NAME WITH THE SAME NAME AND WON"T SEARCH FOR AN ALBUM NAME IF THERE 
    IS A TRACK NAME OR ARTIST NAME WITH THE SAME NAME*/
    /*HENCE THE PRIORITY GOES LIKE --> TRACK > ARTIST > ALBUM */

    /*SEARCHING FOR A TRACK NAME*/
    $qry = "select * from track where track_name like '%{$val}%'";
    $result = $conn->query($qry);
    $output="";
    if($val!="")
    {
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
        else
        {
            /*IF IT IS NOT A TRACK NAME THEN SEARCH FOR AN ARTIST NAME*/
            $qry = "select * from artist where artist_name like '%{$val}%'";
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
            else
            {
                /*IF IT IS NOT AN ARTIST NAME THEN SEARCH FOR AN ALBUM NAME*/
                $qry = "select * from album where album_name like '%{$val}%'";
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
                else
                {
                    echo "<div class='text-light'><h4>No music or artist or album found</h4></div>";
                }
            }
        }
    }
else
{
    echo "";
}
    $conn->close();
?>
    </body>
</html>

