import 'dart:io';

// Was soll in mein cli Programm
// Login mit Password
// Register
// Neuen Tagebucheintrag erstellen
// Beenden

void main() {
  print("Herzlich Willkommen! \nIch freue mich dich begrüßen zu dürfen!");
  print("");

  bool appIsRunning = true;
  while (appIsRunning) {
    print("Was möchtest du als nächstes tuen?");
    print("");
    print("Die App schließen? (B)eenden) \nDich einloggen? (E)inloggen) \noder \nNeu Registrieren? (R)egistrieren)");

    String? userInput = stdin.readLineSync();

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

          while (userIsLoggedIn) {
          print("Menüpunkte: Neuer Tagebucheinrag (1) oder Neuen Termin eintragen (2) Zum beenden der App (B) ");
          String? userInputMenu = stdin.readLineSync();
          switch (userInputMenu) {
            case "1":
            print("Dann wollen wir mal begeinnen, wie geht es dir heute? \nWie war dein Tag");
            stdin.readLineSync();
            print("Tagebucheintrag gespeichert!");
            print("");
            print("Was möchtest du als nächstes tuen?\nTagebucheintrag ergänzen (1) Hauptmenü (H) App beenden (B)");
            
            String? newUserInput = stdin.readLineSync();
            switch (newUserInput) {
              case "1":
              print("Was möchtest du noch hinzufügen, was hast du vergessen? :)");
              stdin.readLineSync()!;
              print("");
              print("Tagebucheintrag gespeichert!");
              print("");
              userIsLoggedIn = true;
              case "H" || "h":
              userIsLoggedIn = true;
              case "Beenden" || "beenden" || "b" || "B":
              userIsLoggedIn = false;
              appIsRunning = false;
            }

            case "2":
            print("Wann ist der Termin ?");
            stdin.readLineSync();
            print("");
            print("Und was findest an dem Termin stat?");
            stdin.readLineSync();
            print("");
            print("Alles klar!, Termin ist eingetragen!");
            userIsLoggedIn = true;
            case "Beenden" || "beenden" || "b" || "B":
            userIsLoggedIn = false;
            appIsRunning = false;
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
