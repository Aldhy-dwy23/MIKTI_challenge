import 'dart:io';

void main() {
  //Input berat dan tinggi Mark
  print('Masukkan berat Mark (kg):');
  double beratMark = double.parse(stdin.readLineSync()!);
  print('Masukkan tinggi Mark (meter):');
  double tinggiMark = double.parse(stdin.readLineSync()!);

  //Input berat dan tinggi John
  print('Masukkan berat John (kg):');
  double beratJohn = double.parse(stdin.readLineSync()!);
  print('Masukkan tinggi John (meter):');
  double tinggiJohn = double.parse(stdin.readLineSync()!);

  //Hitung BMI 
  double bmiMark = beratMark / (tinggiMark * tinggiMark);
  double bmiJohn = beratJohn / (tinggiJohn * tinggiJohn);

  //Variabel Boolean
  bool markHigherBMI = bmiMark > bmiJohn;

  //hasil
  print('BMI Mark: ${bmiMark.toStringAsFixed(2)}');
  print('BMI John: ${bmiJohn.toStringAsFixed(2)}');
  print('Apakah Mark memiliki BMI lebih tinggi dari John? ${markHigherBMI ? 'Benar' : 'Salah'}');
}
