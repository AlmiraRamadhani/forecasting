<div class="panel panel-default">
    <div class="panel-heading">
        <form class="form-inline">
            <div class="form-group">
                <a class="btn btn-primary" href="<?=site_url('transaksi/tambah')?>"><span
                        class="glyphicon glyphicon-plus"></span> Tambah</a>
            </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Tanggal</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <?php    
        $no=0;
        foreach($rows as $row):?>
            <tr>
                <td><?=++$no; ?></td>
                <td><?=$row->nama; ?></td>
                <td><?= date('d M Y', strtotime($row->tanggal)); ?></td>
                <td>
                    <?php if ($row->status == 0) : ?>
                    <a href="<?= site_url('transaksi/changeStatus/' . $row->id); ?>" style="text-decoration: none;">
                        <span class="label label-danger">Belum Dibayar</span>
                    </a>
                    <?php else : ?>
                    <span class="label label-success">Sudah Dibayar</span>
                    <?php endif; ?>
                </td>
                <td>
                    <a class="btn btn-xs btn-info" href="<?=site_url("transaksi/detail/$row->id")?>"><span
                            class="glyphicon glyphicon-info-sign"></span></a>
                    <a class="btn btn-xs btn-warning" href="<?=site_url("transaksi/ubah/$row->id")?>"><span
                            class="glyphicon glyphicon-edit"></span></a>
                    <a class="btn btn-xs btn-danger" href="<?=site_url("transaksi/hapus/$row->id")?>"
                        onclick="return confirm('Hapus data?')"><span class="glyphicon glyphicon-trash"></span></a>
                </td>
            </tr>
            <?php endforeach;?>
        </table>
    </div>
</div>