<?php
class Transaksi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('transaksi_model');
    }

    public function index()
    {
        $data['rows'] = $this->transaksi_model->tampil($this->input->get('search'));
        $data['title'] = 'Data Transaksi';

        load_view('transaksi/tampil', $data);
    }

    public function tambah()
    {
        $this->form_validation->set_rules('user', 'Username', 'required|is_unique[tb_user.user]');
        $this->form_validation->set_rules('pass', 'Password', 'required');
        $this->form_validation->set_rules('level', 'Level', 'required');

        $data['title'] = 'Tambah Transaksi';

        if ($this->form_validation->run() === FALSE) {
            load_view('transaksi/tambah', $data);
        } else {
            $fields = array(
                'user' => $this->input->post('user'),
                'pass' => md5($this->input->post('pass')),
                'level' => $this->input->post('level'),
            );
            $this->transaksi_model->tambah($fields);
            redirect('transaksi');
        }
    }

    public function ubah($ID = null)
    {
        $this->form_validation->set_rules('user', 'Username', 'required');
        $this->form_validation->set_rules('level', 'Level', 'required');

        $data['title'] = 'Ubah Transaksi';

        if ($this->form_validation->run() === FALSE) {
            $data['row'] = $this->transaksi_model->get_user($ID);
            load_view('transaksi/ubah', $data);
        } else {
            $fields = array(
                'user' => $this->input->post('user'),
                'level' => $this->input->post('level'),
            );
            if ($this->input->post('pass'))
                $fields['pass'] = md5($this->input->post('pass'));

            $this->transaksi_model->ubah($fields, $ID);
            redirect('transaksi');
        }
    }

    public function hapus($ID = null)
    {
        $this->transaksi_model->hapus($ID);
        redirect('transaksi');
    }

}
