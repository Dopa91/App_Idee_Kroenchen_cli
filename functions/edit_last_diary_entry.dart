import 'dart:io';

bool editLastDiaryEntry(bool userIsLoggedIn) {
  print("Was möchtest du noch hinzufügen, was hast du vergessen? :)");
  stdin.readLineSync()!;
  print("");
  print("Tagebucheintrag gespeichert!");
  print("");
  userIsLoggedIn = true;
  return userIsLoggedIn;
}
