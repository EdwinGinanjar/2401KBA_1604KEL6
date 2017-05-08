Domains
listnama_kel = nama_kel*
nama_kel = symbol
nama = symbol
nim = integer
mk = string
kelas = symbol

facts 
mahasiswa(nama,nim,kelas,mk) 

predicates
nondeterm praktikan(nama_kel, listnama_kel)
nondeterm menu
nondeterm mulai
nondeterm menux(char)
nondeterm pilih(symbol)
nondeterm hasil(integer)
nondeterm hasil_alpa(integer)
nondeterm hasill
nondeterm pilih1
nondeterm pilih2
nondeterm pilih3
nondeterm pilih4
nondeterm pilih5
nondeterm gol(symbol)
nondeterm go2(symbol)
nondeterm go3(symbol)
nondeterm go4(integer)
nondeterm go5(integer)
nondeterm go6(integer)
nondeterm go7(symbol)
nondeterm lanjut1
nondeterm lanjut2
nondeterm lanjut3
nondeterm lanjut4
nondeterm lanjut5
nondeterm kb
nondeterm fw
nondeterm visual
nondeterm smbd
xx(char,char)

clauses
xx(A,A):-!.
xx(_,_):-fail.

praktikan("Rahmawati Rina H",["        1515015008"]).
praktikan("Sri Marsiah",["                   1515015021"]).
praktikan("Edwin Ginanjar Firdaus",["1515015022"]).



mulai:-
write("SELAMAT DATANG DI PROGRAM DATA GUGUR PRAKTIKUM TI ANGKATAN 2015\n"),
write("\n\nUNTUK LANJUT, TEKAN TOMBOL 'Y'\n"),
readchar(A),menux(A).

menux(A):- xx(A,'Y'),menu.
menux(A):- xx(A,'y'),menu.
menux(_):- mulai.



menu:-
write("\n\n\t\t\t\t==========================================================\n"),
write("\t\t\t\t\tINFO DATA GUGUR PRAKTIKUM TI ANGKATAN 2015\n"),
write("\t\t\t\t==========================================================\n"),nl,
write("\t\t\t\t  1. LIHAT SELURUH DATA MAHASISWA YANG GUGUR PRAKTKUM\n"),
write("\t\t\t\t  2. PROSES DATA MAHASISWA\n"),
write("\t\t\t\t  3. LIHAT DATA MAHASISWA GUGUR PER PRAKTKUM\n"),
write("\t\t\t\t  4. INFO\n"),
write("\t\t\t\t  5. EXIT\n\n"),
write("\t\t\t\t  MASUKKAN PILIHAN >>> "),
readln(A),pilih(A),
write("\n\n\t\t\t\t==========================================================\n").



pilih(A):- A="1", pilih1.
pilih(A):- A="2", pilih2.
pilih(A):- A="3", pilih3.
pilih(A):- A="4", pilih4.
pilih(A):- A="5", pilih5.
pilih(_):- menu.


pilih1:-
write("\n\n\t\t\t\tDATA SELURUH MAHASISWA TI 2015 YANG GUGUR PRAKTIKUM "),
mahasiswa(Nama,Nim,Kelas,Mk),
write("\n\n\t\t\t\tNama \t\t      : ",Nama),
write("\n\t\t\t\tNIM \t\t      : ",Nim),
write("\n\t\t\t\tKelas \t\t      : ",Kelas),
write("\n\t\t\t\tMatakuliah Praktikum   : ",Mk),nl,nl,
fail.



pilih2:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tApakah Sebelumnya Mahasiswa Tersebut Pernah Tidak Masuk ? (Y/N) \n"),
write("\t\t\t\t >>>>  "),
readln(A),go2(A).

go2(A):- A="y",lanjut1.
go2(A):-A="Y",lanjut1.
go2(A):- A="n",hasill.
go2(A):- A="N",hasill.
go2(_):- pilih2.

lanjut1:-
write("\n\t\t\t\t===============================\n"),
write("\t\t\t\t+    PROSES DATA MAHASISWA    +\n"),
write("\t\t\t\t===============================\n\n"),
write("\t\t\t\tMasukkan Data Mahasiswa  \n\n"),
write("\t\t\t\tNama \t\t      : "),
readln(Nama),
write("\t\t\t\tNIM \t\t      : "),
readint(Nim), 
write("\t\t\t\tKelas \t\t      : "),
readln(Kelas), 
write("\t\t\t\tMatakuliah Praktikum   : "),
write("\n\t\t\t\thanya tersedia "),
write("\n\t\t\t\t1. kecerdasan buatan"),
write("\n\t\t\t\t2. pemrograman framework"),
write("\n\t\t\t\t3. pemrograman visual"),
write("\n\t\t\t\t4. smbd"),
write("\n\t\t\t\t (bersifat case sensitif jadi ketikkan sesuai dengan pilihan)"),
write("\n\t\t\t\t Pilih Matakuliah Praktikum : "),
readln(Mk),
assert (mahasiswa(Nama,Nim,Kelas,Mk)),


write("\n\n\n\t\t\t\t===============================\n"),
write("\t\t\t\tData Mahasiswa Yang Dimasukkan  "),
write("\n\t\t\t\t==============================="),
write("\n\n\t\t\t\tNama \t\t      : ",Nama),
write("\n\n\t\t\t\tNIM \t\t      : ",Nim),
write("\n\n\t\t\t\tKelas \t\t      : ",Kelas),
write("\n\n\t\t\t\tMatakuliah Praktikum   : ",Mk),
write("\n\n\t\t\t\t Tekan Y untuk melanjutkan "),
write("\n\t\t\t\t >>>>  "),
readln(A),gol(A).

gol(A):- A="y",lanjut2.
gol(A):- A="Y",lanjut2.
gol(_):- pilih2.

lanjut2:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tAlasannya Mahasiswa Tersebut Tidak Masuk : "),nl,nl,
write("\t\t\t\tA. Sakit"),nl,
write("\t\t\t\tB. Izin"),nl,
write("\t\t\t\tC. Tanpa Keterangan"),nl,
write("\t\t\t\t>>> "),
readln(A),go3(A).

go3(A):- A="A",lanjut3.
go3(A):- A="a",lanjut3.
go3(A):- A="B",lanjut4.
go3(A):- A="b",lanjut4.
go3(A):- A="C",lanjut5.
go3(A):- A="c",lanjut5.
go3(_):- lanjut2.

lanjut3:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tAlasan yang di pilih adalah SAKIT "),nl,
write("\t\t\t\tBerapa hari dia Sakit : "),
readint(A),go4(A).

go4(A):- A <=3,hasil(A).
go4(A):- A = 4,hasil(A).
go4(A):- A > 3,hasil_alpa(A).
go4(_):- lanjut3.

lanjut4:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tAlasan yang di pilih adalah IZIN "),nl,
write("\t\t\t\tBerapa hari dia IZIN : "),
readint(A),go5(A).

go5(A):- A <= 3,hasil(A).
go5(A):- A = 4,hasil(A).
go5(A):- A > 3,hasil_alpa(A).
go5(_):- lanjut4.

lanjut5:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tAlasan yang dipilih adalah TANPA KETERANGAN"),nl,
write("\t\t\t\tBerapa hari dia TANPA KETERANGAN : "),
%readln(A),go6(A),
readint(A),go6(A).
go6(A):- A>3,hasil_alpa(A).
go6(A):- A<=3,hasil_alpa(A).
go6(_):- lanjut5.

pilih3:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tDATA MAHASISWA TI 2015 YANG INHAL/INSUS/GUGUR PER PRAKTIKUM"),
write("\n\t\t\t\t=============================================================\n\n"),
write("\t\t\t\t1. Kecerdasan Buatan\n"),
write("\t\t\t\t2. Pemrograman Framework\n"),
write("\t\t\t\t3. Pemrograman Visual\n"),
write("\t\t\t\t4. Sistem Manajemen Basis Data\n"),
write("\t\t\t\t5. Kembali ke Menu"),nl,nl,
write("\t\t\t\tSILAHKAN PILIH >>> "),
readln(A),go7(A).

go7(A):- A="1",kb.
go7(A):- A="2",fw.
go7(A):- A="3",visual.
go7(A):- A="4",smbd.
go7(A):- A="5",menu.
go7(_):- pilih3.

kb:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tDATA YANG GUGUR PRAKTIKUM KECERDASAN BUATAN"),nl,
write("\n\t\t\t\t-------------------------------------------------------------------------\n"),
mahasiswa(Nama,Nim,Kelas,Pilkb),
write("\t\t\t\tNama \t\t      : ",Nama),
write("\n\t\t\t\tNIM \t\t      : ",Nim),
write("\n\t\t\t\tKelas \t\t      : ",Kelas),
write("\n\t\t\t\tMatakuliah Praktikum   : ",Pilkb),nl,nl,
fail.

fw:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tDATA YANG GUGUR PRAKTIKUM PEMROGRAMAN FRAMEWORK"),nl,
write("\n\t\t\t\t-------------------------------------------------------------------------\n"),
mahasiswa(Nama,Nim,Kelas,"pemrograman framework"),
write("\t\t\t\tNama \t\t      : ",Nama),
write("\n\t\t\t\tNIM \t\t      : ",Nim),
write("\n\t\t\t\tKelas \t\t      : ",Kelas),
write("\n\t\t\t\tMatakuliah Praktikum   : ","pemrograman framework"),nl,nl,
fail.

visual:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tDATA YANG GUGUR PRAKTIKUM PEMROGRAMAN VISUAL"),nl,
write("\n\t\t\t\t-------------------------------------------------------------------------\n"),
mahasiswa(Nama,Nim,Kelas,"pemrograman visual"),nl,
write("\t\t\t\tNama \t\t      : ",Nama),
write("\n\t\t\t\tNIM \t\t      : ",Nim),
write("\n\t\t\t\tKelas \t\t      : ",Kelas),
write("\n\t\t\t\tMatakuliah Praktikum   : ","pemrograman visual"),nl,nl,
fail.

smbd:-
write("\n\t\t\t\t=============================================================\n"),
write("\t\t\t\tDATA YANG GUGUR PRAKTIKUM SISTEM MANAJEMEN BASIS DATA"),nl,
write("\n\t\t\t\t-------------------------------------------------------------------------\n"),
mahasiswa(Nama,Nim,Kelas,"smbd"),nl,
write("\t\t\t\tNama \t\t      : ",Nama),
write("\n\t\t\t\tNIM \t\t      : ",Nim),
write("\n\t\t\t\tKelas \t\t      : ",Kelas),
write("\n\t\t\t\tMatakuliah Praktikum   : ","smbd"),nl,nl,
fail.

pilih4:-
write("\nKETENTUAN DALAM PROGRAM"),
write("\n1. Apabila mahasiswa sakit / Izin lebih dari 3 kali maka dia Insus, jika kurang dari 3 kali maka dia kenakan inhal"),
write("\n2. Apabila mahasiswa tidak masuk dengan tanpa tanpa keterangan lebih dari 3 kali maka dia gugur, jika kurang dari 3 kali dia kenakan insus"),
write("\n3. Apabila mahasiswa selalu masuk maka dia tidak gugur"),nl,nl,

write("KELEMAHAN PROGRAM\n"),
write("\nProgram ini masih banyak akan kelemahan di antaranya : )"),
write("\n1. Jika Tipenya bernilai Integer semisal menginputkan nim, dan angkatan di inputkan selain integer maka program akan berulang ke menu awal"),
write("\n2. Saat menginputkan matakuliah praktikum hanya bisa di inputkan sesuai dengan ketentuan antara lain "),
write("\n   - kecerdasan buatan\n   -pemrogramn framework\n   -pemrograman visual\n   -smbd"),
write("\n     selain dari itu program tidak bisa terpanggil di pilihan 3. dan jika data yang di inputkan sembarang tetap akan tersimpan dan terpanggil di pilihan 1."), 
write("\n3. Data yang tersimpan tidak bisa menampilkan keterangan apakah dia insus atau inhal"),
write("\n4. Data yang tersimpan tidak bisa di hapus"),
write("\nDAN MASIH BANYAK KELEMAHAN LAINNYA KARENA PROGRAM INI MASIH JAUH DARI SEMPURNA"),nl,nl,

write("\nKELOMPOK 6\n"),
praktikan(Nama,[Nim]),nl,
write(Nama, "  ",Nim),
fail,
menu.

pilih5:-
exit.



hasil(A):-
A = 4,
write("\n\t\t\t\t====================================================================\n"),
write("\t\t\t\tAPABILA MAHASISWA TERSEBUT SAKIT / IZIN LEBIH DARI 3 KALI MAKA DIA INSUS\n"),
write("\t\t\t\t                                                  -----INSUS-----         "),
write("\n\t\t\t\t====================================================================\n\n"),
menu.

hasil(A):-
A <= 3,
write("\n\t\t\t\t=====================================================================\n"),
write("\t\t\t\tAPABILA MAHASISWA TERSEBUT SAKIT / IZIN KURANG DARI 3 KALI MAKA DIA INHAL\n"),
write("\t\t\t\t                                                  -----INHAL-----         "),
write("\n\t\t\t\t=====================================================================\n\n"),
menu.

hasil_alpa(A):-
A > 3,
write("\n\t\t\t\t============================================================================\n"),
write("\t\t\t\tAPABILA MAHASISWA TERSEBUT TANPA KETERANGAN LEBIH DARI 3 KALI MAKA DIA GUGUR\n"),
write("\t\t\t\t                                                  -----GUGUR-----         "),
write("\n\t\t\t\t============================================================================\n\n"),
menu.
hasil_alpa(A):-
A <= 3,
write("\n\t\t\t\t============================================================================\n"),
write("\t\t\t\tAPABILA MAHASISWA TERSEBUT TANPA KETERANGAN KURANG DARI 3 KALI MAKA DIA INSUS\n"),
write("\t\t\t\t                                                  -----INSUS-----         "),
write("\n\t\t\t\t============================================================================\n\n"),
menu.

hasill:-
write("\n\t\t\t\t================================================================\n"),
write("\t\t\t\tAPABILA MAHASISWA TERSEBUT SELALU MASUK MAKA DIA TIDAK GUGUR"),
write("\n\t\t\t\t==============================================================\n\n"),
menu.


goal
mulai.


