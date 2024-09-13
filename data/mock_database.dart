import '../models/appointment.dart';
import '../models/diary.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<DiaryEntry> diaryData = [];
  List<User> userData = [User("Andreas", "Dopatka")];
  List<Appointment> appointmentData = [];

  @override
  List<User> getAllUsers() {
    return userData;
  }

  @override
  List<DiaryEntry> getAllDiaryEntry() {
    return diaryData;
  }

  @override
  void createAppointment(String date, String name) {
    Appointment newAppointment = Appointment(date: date, name: name);
    appointmentData.add(newAppointment);
  }

  @override
  void createDiaryEntry(
      String date, String content, bool hasFever, int painScale) {
    DiaryEntry newEntry = DiaryEntry(
        date: date, content: content, hasFever: hasFever, painScale: painScale);
    diaryData.add(newEntry);
  }

  @override
  void createUser(String loginName, String password) {
    User newLoginUser = User(loginName, password);
    userData.add(newLoginUser);
  }

  @override
  void deleteAppointment(String date, String name) {}

  @override
  void deleteDiaryEntry(
      String date, String content, bool hasFever, int painScale) {}

  @override
  void deleteUser(String userName) {}

  @override
  void editAppointment(String date, String name) {}

  @override
  void editDiaryEntry(
      String date, String content, bool hasFever, int painScale) {}

  @override
  void editUser(String userName, User newUserName) {}

  @override
  void showAppointment() {}

  @override
  void showDiaryEntry() {}
}
