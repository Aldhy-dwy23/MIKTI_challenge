import 'dart:io';

void main() {
  //input skor  Tim Lumba-lumba
  print('Masukkan skor Tim Lumba-lumba (3 angka dipisahkan spasi):');
  List<int> skorLumbaLumba = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  //Input skor 
  print('Masukkan skor Tim Koala (3 angka dipisahkan spasi):');
  List<int> skorKoala = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  //Hitung skor rata-rata
  double rataRataLumbaLumba = skorLumbaLumba.reduce((a, b) => a + b) / skorLumbaLumba.length;
  double rataRataKoala = skorKoala.reduce((a, b) => a + b) / skorKoala.length;

  //skor rata-rata  tim
  print('Skor rata-rata Tim Lumba-lumba: ${rataRataLumbaLumba.toStringAsFixed(2)}');
  print('Skor rata-rata Tim Koala: ${rataRataKoala.toStringAsFixed(2)}');

  //Menentukan pemenang atau seri
  if (rataRataLumbaLumba > rataRataKoala && rataRataLumbaLumba >= 100) {
    print('Tim Lumba-lumba memenangkan trofi dengan skor rata-rata ${rataRataLumbaLumba.toStringAsFixed(2)}.');
  } 
    else if (rataRataKoala > rataRataLumbaLumba && rataRataKoala >= 100) {
    print('Tim Koala memenangkan trofi dengan skor rata-rata ${rataRataKoala.toStringAsFixed(2)}.');
  } 
    else if (rataRataLumbaLumba == rataRataKoala && rataRataLumbaLumba >= 100 && rataRataKoala >= 100) {
    print('Hasilnya seri dengan skor rata-rata ${rataRataLumbaLumba.toStringAsFixed(2)}.');
  } 
    else {
    print('Tidak ada pemenang, tidak ada tim yang memenuhi syarat skor minimum.');
  }
}
