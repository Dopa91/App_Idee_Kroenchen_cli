import 'dart:io';

bool newAppointment(bool userIsLoggedIn) {
  print("Wann ist der Termin ?");
  stdin.readLineSync();
  print("");
  print("Und was findest an dem Termin stat?");
  stdin.readLineSync();
  print("");
  print("Alles klar!, Termin ist eingetragen!");
  userIsLoggedIn = true;
  return userIsLoggedIn;
}
