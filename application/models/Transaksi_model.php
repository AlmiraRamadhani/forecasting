<?php
class Transaksi_model extends CI_Model
{
    protected $table = 'tb_transaksi';
    protected $kode = 'id';

    public function tampil($search = '')
    {
        $this->db->select('*');
        $this->db->from('tb_transaksi');
        $this->db->join('tb_atribut', 'tb_transaksi.barang = tb_atribut.id_atribut');
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

    public function tambah($fields)
    {
        $this->db->insert($this->table, $fields);
    }

    public function ubah($fields, $ID)
    {
        $this->db->update($this->table, $fields, array($this->kode => $ID));
    }

    public function hapus($ID)
    {
        $this->db->delete($this->table, array($this->kode => $ID));
    }
    public function login($user, $pass)
    {
        $query = $this->db->get_where('tb_transaksi', array('user' => $user, 'pass' => $pass));
        return $row = $query->row();
    }

    public function cek_pass($level, $user, $pass)
    {
        return $this->db->get_where('tb_transaksi', array('user' => $user, 'pass' => $pass))->result();
    }

    public function update($data, $user)
    {
        $this->db->update('tb_transaksi', $data, array('user' => $user));
    }

    public function getAtributData()
    {
        return $this->db->get('tb_atribut')->result();
    }
}