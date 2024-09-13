import 'dart:io';

String getDiaryEntry() {
  print(
      "Dann wollen wir mal begeinnen, wie geht es dir heute? \nWie war dein Tag");
  String diaryEntry = stdin.readLineSync()!;
  print("Tagebucheintrag gespeichert!");
  print("");

  return diaryEntry;
}
