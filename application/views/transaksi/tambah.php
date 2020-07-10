<div class="row">
    <div class="col-sm-6">
        <?=print_error()?>
        <form method="post">
            <div class="form-group">
                <label>Nama <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama" value="<?=set_value('nama')?>" />
            </div>
            <div class="form-group">
                <label>Tanggal <span class="text-danger">*</span></label>
                <?php 
                    $bulan = date('m');
                    $hari = date('d');
                    $tahun = date('Y');
                    $tanggal = $tahun . '-' . $bulan . '-' . $hari;
                ?>
                <input class="form-control" type="date" name="tanggal" value="<?= $tanggal;  ?>" readonly />
            </div>
            <div class="form-group">
                <label>Barang <span class="text-danger">*</span></label>
                <select class="form-control" name="atribut">
                    <?php foreach($atribut as $a) : ?>
                    <option value="<?= $a->id_atribut; ?>"><?= $a->nama_atribut; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label>Jumlah <span class="text-danger">*</span></label>
                <input type="number" name="jumlah" class="form-control" value="<?= set_value('jumlah'); ?>">
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="<?=site_url('user')?>"><span
                        class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
        </form>
    </div>
</div>