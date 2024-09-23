import 'package:shared_preferences/shared_preferences.dart';
import '../domain/fruit.dart';

class FruitDataSource {
  late SharedPreferences _preferences;

  FruitDataSource();

  initPreference() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<List<Fruit>> loadFruits() async {
    List<String>? fruitListJson = _preferences.getStringList("fruits");
    return fruitListJson != null
        ? fruitListJson.map((fruit) => Fruit.fromJson(fruit)).toList()
        : [];
  }

  saveFruits(List<Fruit> fruits) async {
    final List<String> fruitListJson =
        fruits.map((fruit) => fruit.toJson()).toList();
    await _preferences.setStringList("fruits", fruitListJson);
  }
}
