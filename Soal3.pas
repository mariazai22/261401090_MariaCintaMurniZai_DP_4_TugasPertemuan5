program Soal3;
uses crt;

{ 
    Metode Pengerjaan: 
    Program ini menggunakan array satu dimensi dan algoritma Bubble Sort 
    untuk mengurutkan nilai UAS dari n mahasiswa (1 <= n <= 10) 
    secara ascending (dari terendah ke tertinggi).
}

var
    nilai : array[1..10] of integer; // Array untuk menampung nilai UAS mahasiswa maksimal 10 data
    n, i, j, temp : integer;         // Variabel untuk jumlah mahasiswa (n), perulangan (i, j), dan temporary (temp)

begin
    clrscr; // Membersihkan layar terminal sebelum program dijalankan
    
    // Validasi input: memastikan jumlah mahasiswa (n) berada pada rentang 1 sampai 10
    repeat
        write('Masukkan jumlah mahasiswa (1 - 10): ');
        readln(n);
        if (n < 1) or (n > 10) then
            writeln('Jumlah mahasiswa harus antara 1 sampai 10! Silakan coba lagi.');
    until (n >= 1) and (n <= 10);

    writeln;

    // Perulangan untuk meminta input nilai UAS dari setiap mahasiswa sebanyak n kali
    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

    // Algoritma Bubble Sort: Proses pengurutan nilai dari terendah ke tertinggi (ascending)
    for i := 1 to n - 1 do
    begin
        for j := 1 to n - i do
        begin
            // Jika nilai saat ini lebih besar dari nilai di sebelah kanannya, tukar posisi
            if nilai[j] > nilai[j + 1] then
            begin
                temp := nilai[j];         // Simpan nilai sementara
                nilai[j] := nilai[j + 1]; // Pindahkan nilai yang lebih kecil ke kiri
                nilai[j + 1] := temp;     // Masukkan nilai yang lebih besar ke kanan
            end;
        end;
    end;

    // Menampilkan hasil akhir nilai mahasiswa setelah diurutkan
    writeln;
    writeln('Daftar nilai UAS mahasiswa (dari terendah ke tertinggi):');
    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i, ' : ', nilai[i]);
    end;

    readln; // Menahan jendela terminal agar tidak langsung tertutup
end.