import 'dart:ffi';
import 'dart:io';

void main() {
  print("Herzlich Wilkommen! \nIch freue mich dich begrüßen zu dürfen!");
  bool appIsRunning = true;
  while (appIsRunning) {
    print(
        "Was möchtest du als nächstes tuen? \nDie App schließen? (Beenden) \nDich einloggen? (Einloggen) \noder \nNeu Registrieren? (Registrieren)");
    String? userInput = stdin.readLineSync();

    switch (userInput) {
      case "Beenden" || "beenden":
        appIsRunning = false;
      case "Einloggen" || "einloggen":
        print("Bitte Username eingeben");
        String? username = stdin.readLineSync();

        print("Bitte Password eingeben");
        String? password = stdin.readLineSync();

        if (username == "Andreas" && password == "Dopatka") {
          print("Willkommen zurück, Andreas!");
          print("");
          print("Menüpunkte: Neuer Tagebucheinrag (1) oder Neuen Termin eintragen (2) Zum beenden der App (B) ");
          String? userInputMenu = stdin.readLineSync();
          switch (userInputMenu) {
            case "1":
            print("Dann wollen wir mal, wie geht es dir heute?");
            stdin.readLineSync()!;
          }
        } else {
          print("User existiert nicht. Registreie dich bitte. :)");
        }
      case "Registrieren" || "registrieren":
        print("Die Server ist momenten leider offline :(");
        appIsRunning = false;
      default: 
      print("Ich versteht nur Banhof...");
        appIsRunning = false;

    }
  }
}
