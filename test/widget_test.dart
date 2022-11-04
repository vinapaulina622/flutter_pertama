// void main() {
// //tipe data dan variabel
// //var
//   var mahasiswa = "jejen";
//   var umur = "20";

//   print(mahasiswa + " Umur = " + umur.toString());

//   //string
//   String mahasiswaString;
//   mahasiswaString = "Aan";

//   print(mahasiswaString);

//   //int
//   int semester;
//   semester = 6;

//   print(semester);

//   //double
//   double ipk;
//   ipk = 3.8;

//   print(ipk);

//   //boolean
//   bool benar = true;
//   bool salah = false;
//   bool tidakbenar = !true;
//   bool tidaksalah = !false;

//   //List
//   List<String> jurusan = [
//     "Teknik Informatika",
//     "Sistem Informasi",
//     "DKV",
//     semester.toString(),
//     ipk.toString()
//   ];

//   print(jurusan);

//   //Map
//   Map<String, dynamic> kelas = {"nama": "beben", "kelas": "SI 2"};

//   print(kelas);
//   print(kelas['nama']);
//   print(kelas['kelas']);

//   //OPERATOR
//   int a, b;
//   a = 9;
//   b = 7;
//   print("a = " + a.toString());
//   print("b = " + b.toString());

//   print(a + b);
//   print(a - b);
//   print(a / b);
//   print(a * b);
//   print(a > b);
//   print(a < b);
//   print(a >= b);
//   print(a <= b);

//   //conditional
//   print("conditional");
//   var nilai;
//   nilai = 80;

//   if (nilai >= 80) {
//     print("A");
//   } else if (nilai <= 80 && nilai >= 50) {
//     print("B");
//   } else {
//     print("Tidak Lulus");
//   }

//   print("---------");
//   nilai >= 80 ? print("A") : print("Tidak A");

//   //function
//   print("function");

//   hitungnilai();
//   hitungnilai1(75, 90);
//   var p = hitungnilai1(2, 50);
//   print(p);
//   var n = hitungnilai2(mapel1: 50, mapel2: 2);
//   print(n);
//   var o = hitungnilai3(79, 100);

//   //final keyboard => imutable / tidak bisa di rubah
//   //const final
//   //const
//   //const String mahasiswa = "baban";
//   //final
//   final String mahasiswafk;

//   mahasiswafk = "baban";

//   print(mahasiswafk);

//   //null safety
//   // ? ! late
//   // ? digunakan dia boleh null
//   //String? jurusan;
//   // untuk di isi nanti
//   late String jurusanns;

//   jurusanns = "Sistem Informasi";
//   // jurusan = "SI";
//   // memaksa untuk dijalankan / yakin ada datanya
//   print(jurusanns.length);

//   //perulangan looping
//   //for plus
//   for (int no = 1; no <= 5; no++) {
//     print(no);
//   }
//   //for minus
//   for (int no = 5; no >= 1; no--) {
//     print(no);
//   }
//   //while
//   int no1 = 1;
//   int no2 = 5;
//   while (no1 <= no2) {
//     print(no1);
//     no1++;
//   }
//   // do while
//   int no3 = 1;
//   int no4 = 5;
//   do {
//     print(no3);
//     no3++;
//   } while (no3 <= no4);
// }

// //function
// hitungnilai() {
//   print("hitung nilai");
// }

// //positional argument
// hitungnilai1(mapel1, mapel2, [mapel3]) {
//   var nilaiakhir;
//   if (mapel3 != null) {
//     nilaiakhir = mapel1 / mapel2 + mapel3;
//   } else {
//     nilaiakhir = mapel1 / mapel2;
//   }
//   return nilaiakhir;
// }

// //name argument
// hitungnilai2({mapel1, mapel2}) {
//   var nilaiakhir;
//   if (mapel2 != null) {
//     nilaiakhir = mapel1 / mapel2;
//   } else {
//     nilaiakhir = mapel1;
//   }
//   return nilaiakhir;
// }

// //void
// void hitungnilai3(mapel1, mapel2) {
//   var nilaiakhir = mapel1 + mapel2;
//   print(nilaiakhir);
// }

//oop
//class

class Kendaraan {
  String? merk;
  String? nama;
  int? kecepatan;

  //construktor
  Kendaraan({this.merk, this.nama, this.kecepatan});

  //method
  maju(int tambahKecepatan) {
    kecepatan = kecepatan! + tambahKecepatan;
    //print(kecepatan  + tambahKecepatan);
  }
}

//inheritance / pewarisan
class Mobil extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaksimal;

  Mobil({String? merk, this.jumlahPintu, this.kecepatanMaksimal})
      : super(merk: merk);
}

void main() {
  //instansiasi
  var k1 = Kendaraan(merk: "BMW", nama: "civic", kecepatan: 20);

  k1.merk = "Toyota";
  //(k1.maju(40));
  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);

  var k2 = Kendaraan(merk: "Mitsubishi", nama: "colt", kecepatan: 40);

  (k2.maju(80));
  //print(kecepatan);
  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);

  var m1 = Mobil(jumlahPintu: 4, kecepatanMaksimal: 120, merk: "Honda");
  print("--------");
  print(m1.jumlahPintu);
  print(m1.kecepatanMaksimal);
  print(m1.merk);
}
