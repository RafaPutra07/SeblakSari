<?php
=include "koneksi.php";

date_default_timezone_set("Asia/Bangkok");

$data = mysqli_query($koneksi, "SELECT * FROM t_tempkasir ORDER BY No ASC");

while ($result = mysqli_fetch_array($data)) {
    echo $result["No"] . ". ";
    // echo $result["idBarang"];
    // echo " ";
    echo substr($result["nmBarang"], 0, 24) . "<br>";
    echo "....";
    echo $result["jumlah"];
    echo " X ";
    echo $result["harga"];
    echo " = ";
    echo number_format($result["total"]);
    echo " || ";

    // $tgl = date_create($result["tanggal"]);
    // echo date_format($tgl, "d-m-Y");
}
?>