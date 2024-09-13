import 'dart:io';

String loginMenu() {
  print("Was möchtest du als nächstes tuen?");
  print("");
  print(
      "Die App schließen? (B)eenden) \nDich einloggen? (E)inloggen) \noder \nNeu Registrieren? (R)egistrieren)");

  String userInput = stdin.readLineSync()!;
  return userInput;
}
