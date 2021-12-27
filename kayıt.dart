import 'dart:io';

void main() {
  print("Sign up");
  print("---------------");
  stdout.write("Name: ");
  var name = stdin.readLineSync();
  stdout.write("Password: ");
  var passw = stdin.readLineSync();
  var toplam = {"name": name, "pass": passw};
  print("-" * 50);
  print("${toplam["name"]} User has been successfully registered");
  print("-" * 50);

  var log = false;

  while (log == false) {
    print("Login");
    stdout.write("Name: ");
    var in_name = stdin.readLineSync();
    stdout.write("Password: ");
    var in_passw = stdin.readLineSync();

    if (name == in_name && passw == in_passw) {
      print("-" * 50);
      print("Login successful ${name}");
      print("-" * 50);
      stdout.write("Press enter to exit");
      stdin.readLineSync();
      break;
    } else {
      print("-" * 50);
      print("The information you entered does not match");
      print("-" * 50);
    }
  }
}
