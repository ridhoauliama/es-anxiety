<main role="main" class="main-content">
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12">
        <div class="row align-items-center mb-0">
          <div class="col">
            <?= $this->session->flashdata('pesan'); ?>
          </div>
          <div class="col-auto">
            <form class="form-inline">
              <div class="form-group d-none d-lg-inline">
                <label for="reportrange" class="sr-only">Date Ranges</label>
                <div id="reportrange" class="px-2 py-2">
                  <span class="small"></span>
                </div>
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-sm"><span class="fe fe-refresh-ccw fe-16"></span> Refresh</button>
              </div>
            </form>
          </div>
        </div>
        <div class="card shadow mb-2">
          <div class="card-header">
            <strong class="card-title mb-0">Dashboard Menu</strong>
            <a class="float-right small text-muted" href="#!">Lihat Semua</a>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-6 col-sm-6 mb-4">
                <div class="card shadow">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-3 text-center">
                        <a href="<?= base_url('gejala') ?>">
                          <span class="circle circle-sm bg-primary">
                            <i class="fe fe-16 fe-clipboard text-white mb-0"></i>
                          </span>
                        </a>
                      </div>
                      <div class="col pr-0">
                        <p class="small text mb-0">Gejala :</p>
                        <span class="mb-0">
                          <strong> <?= $totalGejala . ' Data Gejala' ?></strong>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-sm-6 mb-4">
                <div class="card shadow">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-3 text-center">
                        <a href="<?= base_url('penyakit') ?>">
                          <span class="circle circle-sm bg-primary">
                            <i class="fe fe-16 fe-activity text-white mb-0"></i>
                          </span>
                        </a>
                      </div>
                      <div class="col pr-0">
                        <p class="small text mb-0">Jenis Penyakit :</p>
                        <span class="mb-0">
                          <strong> <?= $totalPenyakit . ' Kategori Gangguan Kecemasan' ?></strong>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-sm-6 mb-4">
                <div class="card shadow">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-3 text-center">
                        <a href="<?= base_url('pengetahuan') ?>">
                          <span class="circle circle-sm bg-primary">
                            <i class="fe fe-16 fe-box text-white mb-0"></i>
                          </span>
                        </a>
                      </div>
                      <div class="col pr-0">
                        <p class="small text mb-0">Basis Aturan :</p>
                        <span class="mb-0">
                          <strong> <?= $totalPengetahuan . ' Set Basis Aturan (<i>Rules</i>)' ?></strong>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-sm-6 mb-4">
                <div class="card shadow">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-3 text-center">
                        <a href="<?= base_url('laporan') ?>">
                          <span class="circle circle-sm bg-primary">
                            <i class="fe fe-16 fe-layers text-white mb-0"></i>
                          </span>
                        </a>
                      </div>
                      <div class="col pr-0">
                        <p class="small text mb-0">Riwayat Konsultasi :</p>
                        <span class="mb-0">
                          <strong> <?= $totalLaporan . ' Data Riwayat konsultasi' ?></strong>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>