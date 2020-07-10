<div class="panel panel-default">
    <div class="panel-heading">
        <div class="panel-title">Detail Data Transaksi</div>
    </div>
    <div class="panel-body">
        <table class="table">
            <tr>
                <th width="30%">Nama Pelanggan</th>
                <td><?= $transaksi['nama']; ?></td>
            </tr>
            <tr>
                <th width="30%">Tanggal Transaksi</th>
                <td><?= date('d M Y', strtotime($transaksi['tanggal'])); ?></td>
            </tr>
            <tr>
                <th width="30%">Status Pembayaran</th>
                <td>
                    <?php if($transaksi['status'] == 0) : ?>
                    <span class="label label-danger">Belum Dibayar</span>
                    <?php else : ?>
                    <span class="label label-success">Sudah Dibayar</span>
                    <?php endif; ?>
                </td>
            </tr>
            <tr>
                <th width="30%">Nama Barang</th>
                <td><?= $transaksi['nama_atribut']; ?></td>
            </tr>
            <tr>
                <th width="30%">Jumlah Barang</th>
                <td><?= $transaksi['jumlah']; ?></td>
            </tr>
            <tr>
                <th width="30%">Total Harga</th>
                <td>Rp.
                    <?php 
                        $total = $transaksi['jumlah'] * $transaksi['harga_atribut'];
                        echo number_format($total, 0, ',', '.');
                    ?>
                </td>
            </tr>
        </table>

        <a href="<?= site_url('transaksi'); ?>" class="btn btn-danger">
            Kembali
        </a>
    </div>
</div>