class Poli {
  String? id;
  String namaPoli;

  Poli({this.id, required this.namaPoli});
}

class Karyawan{
  int? id;
  String nip;
  String nama;
  String tanggalLahir;
  String noHp;
  String email;
  String password;

  Karyawan({
    this.id,
    required this.nip,
    required this.nama,
    required this.tanggalLahir,
    required this.noHp,
    required this.email,
    required this.password,
  });
}

class Pasien{
  int? id;
  String nama;
  String tanggalLahir;
  String noHp;
  String alamat;
  String nomorRm;

  Pasien({
    this.id,
    required this.nama,
    required this.tanggalLahir,
    required this.noHp,
    required this.alamat,
    required this.nomorRm,
  });
}