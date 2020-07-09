<div class="row">
    <div class="col-sm-6">
        <?=print_error()?>
        <form method="post">
            <div class="form-group">
                <input type="hidden" name="id" value="<?= $row->id; ?>">
                <label>Username <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama" value="<?=set_value('nama', $row->nama)?>" />
            </div>
            <div class="form-group">
                <label>Tanggal <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="tanggal" value="<?=set_value('date', $row->tanggal)?>"
                    readonly />
            </div>
            <div class="form-group">
                <label>Barang <span class="text-danger">*</span></label>
                <select class="form-control" name="atribut">
                    <?php foreach($atribut as $a) : ?>
                    <?php if($a->id_atribut == $row->barang) : ?>
                    <option value="<?= $a->id_atribut; ?>" selected><?= $a->nama_atribut; ?></option>
                    <?php else : ?>
                    <option value="<?= $a->id_atribut; ?>"><?= $a->nama_atribut; ?></option>
                    <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="<?=site_url('transaksi')?>"><span
                        class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
        </form>
    </div>
</div>