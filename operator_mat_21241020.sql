-- Menggunakan SELECT statement untuk 1 nilai literasi
select 77 as literalInteger; -- literal untuk bilangan bulat
select 'mataram' as kota; -- literal untuk char
select '2023/05/20' as date; -- literal untuk date
select 77 < 33 as booleanLiteral; -- literal boolean

-- Menggunakan SELECT statement untuk 2 atau lebih literal
select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;

-- Menggunakan SELECT untuk NULL
select NULL as kosong;

-- Menggunakan SELECT statement untuk operator matematia
select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_int;

-- Beberapa perhitungan matematika dalam satu statement SELECT (TUGAS LATIHAN)
select 4*2 as hasil_1, (4*8)%7 as hasil_2, (4*8)MOD 7 as Hasil_3;

-- Operator matematika untuk menhasilkan total beli (qty * harga) pada tabel tr_penjualan
use dqlabmartbasic;
select qty*harga as total_beli, nama_produk from tr_penjualan_dqlab;
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab;

-- Operator perbandingan
select 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- Latihan Mandiri
select 1=true, 1=false, 5>=5, 5.2=5.200, NULL=1, NULL=NULL; 

-- Penjualan yang produk dan kauntitinya di atas 3
select nama_produk, qty, qty >= 3 from tr_penjualan_dqlab;

-- Penggunaan fungsi dan nilai literal
select pow (3,2), round (3.14), round (3.54), round (3.155,1), round (5.155,2), floor (4.28), floor (4.78), ceiling (4.39), ceiling (4.55);

-- Fungsi now(), year(), datediff(), dan day()
select now(), year('2022-05-20'), datediff('2022-05-20', '2022-05-01'), day(now());

-- Penggunaan fungsi tanggal pada kolom dan tabel
-- Fungsi pada tabel tr_penjualan
-- Mendapatkan latest buy dari produk
select nama_produk, datediff(now(), tgl_transaksi) as latest_buy, year(tgl_transaksi)
from tr_penjualan_dqlab;

-- Kluasal WHERE untuk filtering atau penyaringan
-- Ambil nama produk dan qty dari tabel tr_penjualan_dqlab yang qty lebih dari 2
select nama_produk, qty from tr_penjualan_dqlab where qty > 2;

select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
where kode_pelanggan = 'dqlabcust07';

select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
where kode_pelanggan = 'dqlabcust07' AND qty > 1;

-- Penggunaan LIKE pada statement SELECT
-- cari semua nama produk yang namanya diawali huruf 'F'
select nama_produk from tr_penjualan_dqlab
where nama_produk like 'f%';
