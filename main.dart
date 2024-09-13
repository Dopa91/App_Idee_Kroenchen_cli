import 'dart:io';
import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'functions/edit_last_diary_entry.dart';
import 'functions/get_last_entry.dart';
import 'functions/login_menu.dart';
import 'functions/main_menu.dart';
import 'functions/new_appointment.dart';
import 'functions/get_diary_entry.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();

  print("Herzlich Willkommen! \nIch freue mich dich begrüßen zu dürfen!");
  print("");

  bool appIsRunning = true;
  while (appIsRunning) {
    String userInput = loginMenu();

    switch (userInput) {
      case "Beenden" || "beenden" || "b" || "B":
        appIsRunning = false;
      case "Einloggen" || "einloggen" || "e" || "E":
        print("Bitte Username eingeben");
        String? username = stdin.readLineSync();

        print("Bitte Password eingeben");
        String? password = stdin.readLineSync();

        if (username == "Andreas" && password == "Dopatka") {
          print("Willkommen zurück, Andreas!");
          print("");
          bool userIsLoggedIn = true;
// umcoden
          while (userIsLoggedIn) {
            String userInputMenu = mainMenu();
            switch (userInputMenu) {
              case "1":
                String diaryEntry = getDiaryEntry();
                mockDatabase.createDiaryEntry(
                    "12.09.2024", diaryEntry, false, 2);
                print(
                    "Was möchtest du als nächstes tuen?\nTagebucheintrag ergänzen (1) Hauptmenü (H) App beenden (B) \nLetzten Tagebucheintrag anzeigen (D)");

                String newUserInput = stdin.readLineSync()!;
                switch (newUserInput) {
                  case "1":
                    userIsLoggedIn = editLastDiaryEntry(userIsLoggedIn);
                  case "Diary" || "D" || "d":
                    getLastEntry(mockDatabase);
                  case "H" || "h":
                    userIsLoggedIn = true;
                  case "Beenden" || "beenden" || "b" || "B":
                    appIsRunning = false;
                    userIsLoggedIn = false;
                  default:
                    print("Da ist was schiefgelaufen");
                }
              case "2":
                userIsLoggedIn = newAppointment(userIsLoggedIn);

              case "Beenden" || "beenden" || "b" || "B":
                appIsRunning = false;
                userIsLoggedIn = false;
            }
          }
        } else {
          print("User existiert nicht. Registreie dich bitte. :)");
        }
      case "Registrieren" || "registrieren" || "r" || "R":
        print("Die Server ist momenten leider offline :(");
        appIsRunning = false;
      default:
        print("Ich versteht nur Banhof...");
        appIsRunning = true;
    }
  }
}
