import '../models/diary.dart';
import '../models/user.dart';

abstract class DatabaseRepository {
// Einen neuen Benutzer hinzufügen (createUser)
  void createUser(String loginName, String password);
// Bestehende Benutzerdaten bearbeiten ( editUser)
  void editUser(String userName, User newUserName);
// Benutzerdaten löschen (deleteUser)
  void deleteUser(String userName);
// Einen neuen Tagebucheintrag erstellen (createDiaryEntry)
  void createDiaryEntry(
      String date, String content, bool hasFever, int painScale);
// Den Tagebucheintrag anzeigen lassen (showDiaryEntry)
  void showDiaryEntry();
// Tagebucheintrag bearbeiten ( editDiaryEntry)
  void editDiaryEntry(
      String date, String content, bool hasFever, int painScale);
// Tagebucheintrag löschen (deleteDiaryEntry)
  void deleteDiaryEntry(
      String date, String content, bool hasFever, int painScale);
// Einen neuen Termineintrag erstellen (createAppointment)
  void createAppointment(String date, String name);
// Den erstellten Termin  anzeigen lassen (showAppointment)
  void showAppointment();
// Termine bearbeiten ( editAppointment)
  void editAppointment(String date, String name);
// Termin löschen (deleteAppointment)
  void deleteAppointment(String date, String name);
  // Alle Benutzer erhalten
  List<User> getAllUsers();
  // Alle Tagebucheinträge auslesen
  List<DiaryEntry> getAllDiaryEntry();
}
