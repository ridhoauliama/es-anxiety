<?php
defined('BASEPATH') or exit('No direct script access allowed');
// Halaman Utama
class Home extends CI_Controller
{
  public function index()
  {
    $data['judul'] = "Sistem Pakar - Anxiety Disorder Diagnosis";
    $this->load->view('templates/Home_Header', $data);
    $this->load->view('home/index');
    $this->load->view('templates/Home_Footer');
  }
}
