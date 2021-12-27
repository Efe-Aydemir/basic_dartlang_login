import 'dart:io';

void main() {
  print("Sign up");
  print("---------------");
  stdout.write("Name: ");
  var name = stdin.readLineSync();
  stdout.write("Password: ");
  var passw = stdin.readLineSync();
  var toplam = {"name": name, "şifre": passw};
  print("${toplam["name"]} adlı kullanıcı başarı ile kayıt edildi");
  print("-" * 50);

  var log = false;

  while (log == false) {
    print("Login");
    stdout.write("Name: ");
    var in_name = stdin.readLineSync();
    stdout.write("Password: ");
    var in_passw = stdin.readLineSync();

    if (name == in_name && passw == in_passw) {
      print("Login successful ${name}");
      var log = true;
    } else {
      print("The information you entered does not match");
      print("-" * 50);
    }
  }
}
