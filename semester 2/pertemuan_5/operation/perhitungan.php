<?php

class Bunga {
    public $jumlahUang;
    public $sukuBunga;
    public $jangkaWaktu;
    public $bulanOrTahun;
    public $jangkaWaktuAfter;


    function __construct($jumlahUang, $sukuBunga, $jangkaWaktu, $bulanOrTahun) {
        $this->jumlahUang = $jumlahUang;
        $this->sukuBunga = $sukuBunga;
        $this->jangkaWaktu = $jangkaWaktu;
        $this->bulanOrTahun = $bulanOrTahun;

        if($bulanOrTahun == 'bulan') {
            $this->jangkaWaktuAfter = $jangkaWaktu/12;
        } else {
            $this->jangkaWaktuAfter = $jangkaWaktu;
        }
    }

    function getBunga() {
        $result = ($this->jumlahUang * $this->sukuBunga) / 100 * $this->jangkaWaktuAfter;
        
        return [number_format($result), number_format($this->jumlahUang), $this->sukuBunga . '%', $this->jangkaWaktu, ucfirst($this->bulanOrTahun)];
    }
}

