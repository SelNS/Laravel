<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sampel</title>
</head>
<body style="width: 100%;
    min-height: 100vh;
    background-image: linear-gradient(rgba(0,0,0,.5), rgba(0,0,0,.5)), url(bg.jpg);
    background-position: center;
    background-size: cover;
    display: box;
    justify-content: center;
    align-items: center;">
   
    <table border="2" width="100%" length="100%"  style="background-color:#e7e7e7; color:black; font-size:larger">
        <tr>
            <th>NO</th>
            <th>Suhu</th>
            <th>Pergerakan</th>
            <th>Keadaan</th>
            <th>Keterangan</th>
        </tr>

        <?php

        require_once('connect.php');

        $sql = mysqli_query($connect, "SELECT * FROM ayam");
        if(mysqli_num_rows($sql)) {
            $no = 1;
            foreach ($sql as $data) { ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $data['suhu'] ?></td>
                <td><?= $data['pergerakan'] ?></td>
                <td><?= $data['keadaan'] ?></td>
                <td><?= $data['keterangan'] ?></td>
            </tr>
            
            <?php
            }
            // echo ("Contoh Probabilitas cek kondisi ayam : <br/> jumlah total : ".$no-1.)."\n";
            // echo ("<br/>");
            // echo ("jumlah kondisi baik (40) : 1/4 <br/>");
            // echo ("jumlah kondisi (pergerakan (ya)) : 8/16 <br/>");
            // echo ("jumlah kondisi (keadaan (ya)) : 8/16 <br/>");
        }
        ?>
    </table><br>
    <!-- <div><a href="cek_ayam.php"><button style="background-color:#e7e7e7; color:black; font-size:medium">Cek Ayam</button></a><br><br>
         <a href="logout.php"><button style="background-color:#e7e7e7; color:black; font-size:medium">Logout</button></a>
    </div> -->
</body>
</html>