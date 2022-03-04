<br><br><br>
    <div class="container text-center" style="margin: 2em auto;">
    <h2 class="tex-center">Tabel Barang Keluar</h2>
    <a href="<?=base_url('report')?>" style="margin-bottom:10px;float:left;" type="button" class="btn btn-danger" name="laporan_data"><i class="fa fa-file-text" aria-hidden="true"></i>download excel</a>
    <div class="tabel" style="margin-top:80px">
    <table class="table table-bordered table-striped" style="margin: 2em auto;" id="tabel_barangkeluar">
    <thead>
      <tr>
        <th>Tanggal Masuk</th>
        <th>Tanggal Keluar</th>
        <th>Kode Barang</th>
        <th>Nama Barang</th>
        <th>Satuan</th>
        <th>Jumlah</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <?php if(is_array($list_data)){ ?>
        <?php $no = 1;?>
        <?php foreach($list_data as $dd): ?>
          <td><?=$dd->tanggal_masuk?></td>
          <td><?=$dd->tanggal_keluar?></td>
          <td><?=$dd->kode_barang?></td>
          <td><?=$dd->nama_barang?></td>
          <td><?=$dd->satuan?></td>
          <td><?=$dd->jumlah?></td>
      </tr>
    <?php $no++; ?>
    <?php endforeach;?>
    <?php }else { ?>
          <td colspan="7" align="center"><strong>Data Kosong</strong></td>
    <?php } ?>
    </tbody>
  </table>
  </div>
</div>
