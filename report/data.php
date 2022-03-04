
<table>
    <br>
    <thead>
    <tr>
        <th>no</th>
        <th>tanggal masuk</th>
        <th>tanggal keluar</th>
        <th>kode barang</th>
        <th>nama barang</th>
        <th>satuan</th>
        <th>Jumlah</th>

    </tr>
    </thead>
    <?php
    include "koneksi.php";
    $sql="select * from tb_barang_keluar order by id";

    $hasil=mysqli_query($kon,$sql);
    while ($data = mysqli_fetch_array($hasil)) {
       

        ?>
        <tbody>
        <tr><td><?php echo $data["id"]; ?></td>
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