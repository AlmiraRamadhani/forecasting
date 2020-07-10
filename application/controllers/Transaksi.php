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
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('tanggal', 'Tanggal', 'required');
        $this->form_validation->set_rules('atribut', 'Atribut', 'required');
        $this->form_validation->set_rules('jumlah', 'Jumlah', 'required|numeric');

        $data['title'] = 'Tambah Transaksi';
        $data['atribut'] = $this->transaksi_model->getAtributData();

        if ($this->form_validation->run() === FALSE) {
            load_view('transaksi/tambah', $data);
        } else {
            $this->transaksi_model->tambah();
            redirect('transaksi');
        }
    }

    public function ubah($ID = null)
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('tanggal', 'Tanggal', 'required');
        $this->form_validation->set_rules('atribut', 'Atribut', 'required');

        $data['title'] = 'Ubah Transaksi';

        if ($this->form_validation->run() === FALSE) {
            $data['row'] = $this->transaksi_model->getTransaksiById($ID);
            $data['atribut'] = $this->transaksi_model->getAtributData();
            load_view('transaksi/ubah', $data);
        } else {
            $id = $this->input->post('id');
            $this->transaksi_model->ubah($id);
            redirect('transaksi');
        }
    }

    public function hapus($ID = null)
    {
        $this->transaksi_model->hapus($ID);
        redirect('transaksi');
    }

    public function changeStatus($ID = null)
    {
        $this->transaksi_model->changeStatusBayar($ID);
        redirect('transaksi');
    }

    public function detail($ID)
    {
        $data['title'] = 'Detail Transaksi';
        $data['transaksi'] = $this->transaksi_model->getTransaksiById($ID);

        load_view('transaksi/detail', $data);
    }
}