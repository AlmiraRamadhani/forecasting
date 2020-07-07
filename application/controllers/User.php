<?php
class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
    }

    public function index()
    {
        $data['rows'] = $this->user_model->tampil($this->input->get('search'));
        $data['title'] = 'Data User';

        load_view('user/tampil', $data);
    }

    public function tambah()
    {
        $this->form_validation->set_rules('user', 'Username', 'required|is_unique[tb_user.user]');
        $this->form_validation->set_rules('pass', 'Password', 'required');
        $this->form_validation->set_rules('level', 'Level', 'required');

        $data['title'] = 'Tambah user';

        if ($this->form_validation->run() === FALSE) {
            load_view('user/tambah', $data);
        } else {
            $fields = array(
                'user' => $this->input->post('user'),
                'pass' => md5($this->input->post('pass')),
                'level' => $this->input->post('level'),
            );
            $this->user_model->tambah($fields);
            redirect('user');
        }
    }

    public function ubah($ID = null)
    {
        $this->form_validation->set_rules('user', 'Username', 'required');
        $this->form_validation->set_rules('level', 'Level', 'required');

        $data['title'] = 'Ubah user';

        if ($this->form_validation->run() === FALSE) {
            $data['row'] = $this->user_model->get_user($ID);
            load_view('user/ubah', $data);
        } else {
            $fields = array(
                'user' => $this->input->post('user'),
                'level' => $this->input->post('level'),
            );
            if ($this->input->post('pass'))
                $fields['pass'] = md5($this->input->post('pass'));

            $this->user_model->ubah($fields, $ID);
            redirect('user');
        }
    }

    public function hapus($ID = null)
    {
        $this->user_model->hapus($ID);
        redirect('user');
    }
    public function login()
    {
        if ($this->session->userdata('login')) {
            redirect();
        }

        $this->form_validation->set_rules('user', 'Username', 'required');
        $this->form_validation->set_rules('pass', 'Password', 'required|callback_ceklogin');

        if ($this->form_validation->run() === FALSE) {
            $data['title'] = 'Login';
            $this->load->view('login', $data);
        } else {
            redirect();
        }
    }

    function ceklogin()
    {
        $user = $this->input->post('user');
        $pass = $this->input->post('pass');

        $row = $this->db->query("SELECT * FROM tb_user WHERE user='$user' AND pass=MD5('$pass')")->row();

        print_r($row);

        if ($row) {
            $this->session->set_userdata('login', TRUE);
            $this->session->set_userdata('user', $row->user);
            $this->session->set_userdata('level', $row->level);
            return true;
        } else {
            $this->form_validation->set_message('ceklogin', 'Login gagal');
            return false;
        }
    }

    function logout()
    {
        $this->session->sess_destroy();
        redirect();
    }

    function password()
    {
        if (!$this->session->userdata('login'))
            redirect('user/login');

        $this->form_validation->set_rules('pass1', 'Password Lama', 'required|callback_cek_pass');
        $this->form_validation->set_rules('pass2', 'Password Baru', 'required|matches[pass3]');
        $this->form_validation->set_rules('pass3', 'Konfirmasi Password Baru', 'required');

        if ($this->form_validation->run() === false) {
            $data['title'] = 'Ubah Password';
            load_view('password', $data);
        } else {
            $user = $this->session->userdata('user');
            $pass = $this->input->post('pass2');

            $data = array('pass' => $this->input->post('pass2'));
            $this->db->query("UPDATE tb_user SET pass=MD5('$pass') WHERE user='$user'");
            $data['title'] = 'Password Berhasil Diubah';
            load_message('Password berhasil diubah', 'success');
        }
    }

    public function cek_pass()
    {
        $level = $this->session->userdata('level');
        $user = $this->session->userdata('user');
        $pass = $this->input->post('pass1');
        $row = $this->db->query("SELECT * FROM tb_user WHERE user='$user' AND pass=MD5('$pass')")->row();
        if (!$row) {
            $this->form_validation->set_message('cek_pass', '%s salah');
            return false;
        }
        return true;
    }
}
