import 'package:shared_preferences/shared_preferences.dart';
import '../database/task.database.dart';
import '../domain/task.dart';

class TaskDataSource {
  late SharedPreferences _preference;
  final TaskDataBase _taskDataBase = TaskDataBase.instance;

  initPreference() async {
    _preference = await SharedPreferences.getInstance();
  }

  String? load(String key) {
    return _preference.getString(key);
  }

  save(String key, String value) {
    _preference.setString(key, value);
  }

  Future<int> saveTask(Task value) async {
    return await _taskDataBase.insert(value);
  }

  Future<List<Task>> loadTasks() async {
    return await _taskDataBase.readAll();
  }
}
