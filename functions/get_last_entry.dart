import '../data/database_repository.dart';
import '../models/diary.dart';

void getLastEntry(DatabaseRepository mockDatabase) {
  List<DiaryEntry> diaryEntry = mockDatabase.getAllDiaryEntry();
  print(diaryEntry);
}
