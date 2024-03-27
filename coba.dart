import 'dart:io';

void main() {
  // Minta input skor untuk Tim Lumba-lumba
  print('Masukkan skor untuk Tim Lumba-lumba (3 angka dipisahkan spasi):');
  List<int> skorLumbaLumba = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  // Minta input skor untuk Tim Koala
  print('Masukkan skor untuk Tim Koala (3 angka dipisahkan spasi):');
  List<int> skorKoala = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  // Menghitung skor rata-rata untuk setiap tim
  double rataRataLumbaLumba = skorLumbaLumba.reduce((a, b) => a + b) / skorLumbaLumba.length;
  double rataRataKoala = skorKoala.reduce((a, b) => a + b) / skorKoala.length;

  // Menampilkan skor rata-rata kedua tim
  print('Skor rata-rata Tim Lumba-lumba: $rataRataLumbaLumba');
  print('Skor rata-rata Tim Koala: $rataRataKoala');

  // Menentukan pemenang atau apakah terjadi seri
  if (rataRataLumbaLumba > rataRataKoala && rataRataLumbaLumba >= 100) {
    print('Tim Lumba-lumba memenangkan trofi dengan skor rata-rata $rataRataLumbaLumba.');
  } else if (rataRataKoala > rataRataLumbaLumba && rataRataKoala >= 100) {
    print('Tim Koala memenangkan trofi dengan skor rata-rata $rataRataKoala.');
  } else if (rataRataLumbaLumba == rataRataKoala && rataRataLumbaLumba >= 100 && rataRataKoala >= 100) {
    print('Hasilnya seri dengan skor rata-rata $rataRataLumbaLumba.');
  } else {
    print('Tidak ada pemenang, tidak ada tim yang memenuhi syarat skor minimum.');
  }
}
