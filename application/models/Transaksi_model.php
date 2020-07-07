<?php
class User_model extends CI_Model
{
    protected $table = 'tb_transaksi';
    protected $kode = 'id';

    public function tampil($search = '')
    {
        return $this->db->query("SELECT * FROM tb_transaksi WHERE user LIKE '%" . $search . "%' ORDER BY id")->result();
    }

    public function get_user($ID = null)
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
}