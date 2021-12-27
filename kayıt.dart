import 'dart:io';

void main() {
  print("Kayıt Ekranı");
  print("---------------");
  stdout.write("Adınız: ");
  var isim = stdin.readLineSync();
  stdout.write("Şifreniz: ");
  var passw = stdin.readLineSync();
  var toplam = {"isim": isim, "şifre": passw};
  print("${toplam["isim"]} adlı kullanıcı başarı ile kayıt edildi");
  print("-" * 50);

  var giris = false;

  while (giris == false) {
    print("Giriş Ekranı");
    stdout.write("Adınız: ");
    var gir_isim = stdin.readLineSync();
    stdout.write("Şifreniz: ");
    var gir_parola = stdin.readLineSync();

    if (isim == gir_isim && passw == gir_parola) {
      print("Giriş Başarılı ${isim}");
      var giris = true;
    } else {
      print("Girdiğiniz Bilgiler uyuşmuyor");
      print("-" * 50);
    }
  }
}
