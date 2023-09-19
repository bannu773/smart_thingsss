import 'package:shared_preferences/shared_preferences.dart';

class CurtainHistory {
  static final CurtainHistory _instance = CurtainHistory._internal();

  factory CurtainHistory() {
    return _instance;
  }

  CurtainHistory._internal();

  List<double> history = [];

  Future<void> loadHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> historyStrings = prefs.getStringList('history') ?? [];
    history = historyStrings.map((value) => double.parse(value)).toList();
  }

  Future<void> saveHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
        'history', history.map((value) => value.toString()).toList());
  }

  void addToHistory(double value) {
    history.add(value);
    saveHistory();
  }
}
