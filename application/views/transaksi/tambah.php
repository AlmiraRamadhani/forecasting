<div class="row">
    <div class="col-sm-6">
        <?=print_error()?>
        <form method="post">
            <div class="form-group">
                <label>Nama <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama" value="<?=set_value('nama')?>"/>
            </div>
            <div class="form-group">
                <label>Tanggal <span class="text-danger">*</span></label>
                <input class="form-control" type="date" name="tgl" value="<?=set_value('tgl')?>"/>
            </div>
            <div class="form-group">
                <label>Barang <span class="text-danger">*</span></label>
                <select class="form-control" name="level">
                    <?=get_level_option(set_value('level'))?>
                </select>
            </div>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="<?=site_url('user')?>"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>            
        </form>
    </div>
</div>