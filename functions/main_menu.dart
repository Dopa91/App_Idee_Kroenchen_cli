import 'dart:io';

String mainMenu() {
  print(
      "Menüpunkte: Neuer Tagebucheinrag (1) oder Neuen Termin eintragen (2) Zum beenden der App (B) ");
  String userInputMenu = stdin.readLineSync()!;
  return userInputMenu;
}
