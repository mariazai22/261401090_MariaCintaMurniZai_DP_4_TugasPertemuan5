program Soal4;
uses crt;

{ 
  Metode Pengerjaan: 
  Program ini menggunakan array untuk menampung komponen nilai 
  (tugas, kuis, UTS, dan UAS) dari n mahasiswa (1 <= n <= 5). 
  Kemudian menghitung nilai rata-rata dan menentukan status kelulusan 
  (lulus jika rata-rata >= 70).
}

var
    tugas, kuis, uts, uas, rataRata : array[1..5] of real;
    n, i : integer;

begin
    clrscr;
    
    // Validasi agar jumlah mahasiswa sesuai rentang 1 sampai 5
    repeat
        write('Masukkan jumlah mahasiswa (1 - 5): ');
        readln(n);
        if (n < 1) or (n > 5) then
            writeln('Jumlah mahasiswa harus antara 1 sampai 5! Silakan coba lagi.');
    until (n >= 1) and (n <= 5);

    writeln;

    // Input nilai mahasiswa
    for i := 1 to n do
    begin
        writeln('--- Mahasiswa ke-', i, ' ---');
        write('Masukkan nilai tugas : ');
        readln(tugas[i]);
        write('Masukkan nilai kuis  : ');
        readln(kuis[i]);
        write('Masukkan nilai UTS   : ');
        readln(uts[i]);
        write('Masukkan nilai UAS   : ');
        readln(uas[i]);
        
        // Menghitung nilai rata-rata
        rataRata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
        writeln;
    end;

    // Output hasil rekapitulasi, nilai lengkap, rata-rata, dan keterangan lulus/tidak
    writeln('========================================');
    writeln('       REKAP NILAI & KELULUSAN MHS      ');
    writeln('========================================');
    
    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('  Tugas     : ', tugas[i]:0:2);
        writeln('  Kuis      : ', kuis[i]:0:2);
        writeln('  UTS       : ', uts[i]:0:2);
        writeln('  UAS       : ', uas[i]:0:2);
        writeln('  Rata-rata : ', rataRata[i]:0:2);
        
        if rataRata[i] >= 70 then
            writeln('  Keterangan: Lulus')
        else
            writeln('  Keterangan: Tidak Lulus');
            
        writeln('----------------------------------------');
    end;

    readln;
end.