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
        <h2 class='tengah'>download data barang masuk </h2>
        <br/>
        <div class='tengah'>
 <a target="_blank" href="export_to_excel.php">EXPORT KE EXCEL</a>
        </div>
 <table>
 <tr>
        <th>no</th>
        <th>tanggal masuk</th>
        <th>kode barang</th>
        <th>nama barang</th>
        <th>satuan</th>
        <th>Jumlah</th>

 </tr>
 <?php 
 // koneksi database
 $koneksi = mysqli_connect("localhost","root","","web_gudang");



 // menampilkan data

 $data = mysqli_query($koneksi,"select * from tb_barang_masuk");
 while($d = mysqli_fetch_array($data)){
 ?>
 <tr>
 <td style='text-align: center;'><?php echo $d['id'] ?></td>
 <td><?php echo $d['tanggal'] ?></td>
 <td><?php echo $d['kode_barang']; ?></td>
 <td><?php echo $d['nama_barang']; ?></td>
 <td><?php echo $d['satuan']; ?></td>
 <td><?php echo $d['jumlah']; ?></td>
 </tr>
 <?php 
 }
 ?>
 </table>
</body>
</html>