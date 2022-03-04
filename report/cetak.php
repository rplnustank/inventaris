<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=barang keluar (" . date('d-m-Y') . ").xls");
include "data.php";
?>