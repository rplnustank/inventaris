<!DOCTYPE html>
<html>
<head>
 <title>web gudang download data</title>
</head>
<body>
 <style type="text/css">
 body{
 font-family: sans-serif;
 }
 table{
 margin: 20px auto;
 border-collapse: collapse;
 }
 table th,
 table td{
 border: 1px solid #3c3c3c;
 padding: 3px 8px;



 }

 a{
 background: blue;
 color: #fff;
 padding: 8px 10px;
 text-decoration: none;
 border-radius: 2px;
 }



    .tengah{

        text-align: center;
    }
 </style>
        <h1 class='tengah'>silahkan download file excel di sini </h1>
        <h2 class='tengah'>download data barang keluar </h2>
        <br/>
        <div class='tengah'>
 <a target="_blank" href="cetak.php">EXPORT KE EXCEL</a>
        </div>

        <table>
    <tr>
        <th>no</th>
        <th>tanggal masuk</th>
        <th>tanggal keluar</th>
        <th>kode barang</th>
        <th>nama barang</th>
        <th>satuan</th>
        <th>Jumlah</th>

    </tr>
      <?php
    include "koneksi.php";
    $sql="select * from tb_barang_keluar order by id ";

    $hasil=mysqli_query($kon,$sql);
    while ($data = mysqli_fetch_array($hasil)) {
       

        ?>
        <tbody>
        <tr>
            <td><?php echo $data["id"]; ?></td>
            <td><?php echo $data["tanggal_masuk"]; ?></td>
            <td><?php echo $data["tanggal_keluar"];   ?></td>
            <td><?php echo $data["kode_barang"];   ?></td>
            <td><?php echo $data["nama_barang"];   ?></td>
            <td><?php echo $data["satuan"];   ?></td>
            <td><?php echo $data["jumlah"];   ?></td>
        </tr>
        </tbody>
        <?php
    }
    ?>
    </table>
</body>
</html>