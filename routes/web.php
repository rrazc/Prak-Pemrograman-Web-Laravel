<?php

use Illuminate\Support\Facades\Route;

Route::get('/latihan-php', function () {
    $nama = 'Zafira Khairunnisa';
    $nilai = [80, 75, 55, 45, 48];

    $hitungRataRata = function (array $data): float {
        $total = 0;
        foreach ($data as $angka) {
            $total += $angka;
        }
        return $total / count($data);
    };

    $rataRata = $hitungRataRata($nilai);
    if ($rataRata >= 75) {
        $status = 'Lulus';
    } else {
        $status = 'Perlu Perbaikan';
    }
    
    return view('latihan-php', compact(
        'nama', 'nilai', 'rataRata', 'status'
    ));
});
