<?php
class Transaksi_model extends CI_Model
{
    protected $table = 'tb_transaksi';
    protected $kode = 'id';

    public function tampil($search = '')
    {
        $this->db->select('*');
        $this->db->from('tb_transaksi');
        if ($search) {
            $this->db->like('nama', $search);
        }
        return $this->db->get()->result();
    }

    public function get_transaksi($ID = null)
    {
        $query = $this->db->get_where($this->table, array($this->kode => $ID));
        return $query->row();
    }

    public function tambah()
    {
        $fields = array(
            'nama' => $this->input->post('nama'),
            'tanggal' => $this->input->post('tanggal'),
            'status' => 0
        );

        $this->db->insert('tb_transaksi', $fields);
        $last_id = $this->db->insert_id();

        $fields_detail = array(
            'id_transaksi' => $last_id,
            'barang' => $this->input->post('atribut'),
            'jumlah' => $this->input->post('jumlah')
        );

        $this->db->insert('tb_detail_transaksi', $fields_detail);
    }

    public function ubah($ID)
    {
        $fields = array(
            'nama' => $this->input->post('nama'),
            'tanggal' => $this->input->post('tanggal'),
            'status' => $this->input->post('status'),
        );

        $this->db->where('id', $ID);
        $this->db->update('tb_transaksi', $fields);

        //Delete data details
        $this->db->where('id_transaksi', $ID);
        $this->db->delete('tb_detail_transaksi');
        
        //Masukkan ulang
        $fields_details = array(
            'id_transaksi' => $ID,
            'barang' => $this->input->post('atribut'),
            'jumlah' => $this->input->post('jumlah'),
        );

        $this->db->insert('tb_detail_transaksi', $fields_details);
    }

    public function hapus($ID)
    {
        //Hapus data transaksi
        $this->db->where('id', $ID);
        $this->db->delete('tb_transaksi');
        
        //Hapus detail transaksi
        $this->db->where('id_transaksi', $ID);
        $this->db->delete('tb_detail_transaksi');
    }
    
    public function update($data, $user)
    {
        $this->db->update('tb_transaksi', $data, array('user' => $user));
    }

    public function getAtributData()
    {
        return $this->db->get('tb_atribut')->result();
    }

    public function changeStatusBayar($ID)
    {
        $this->db->set('status', 1);
        $this->db->where('id', $ID);
        $this->db->update('tb_transaksi');
    }

    public function getTransaksiById($ID)
    {
        $this->db->select('*');
        $this->db->from('tb_transaksi');
        $this->db->join('tb_detail_transaksi', 'tb_transaksi.id = tb_detail_transaksi.id_transaksi');
        $this->db->join('tb_atribut', 'tb_atribut.id_atribut = tb_detail_transaksi.barang');
        $this->db->where('tb_transaksi.id', $ID);
        return $this->db->get()->row_array();
    }
}