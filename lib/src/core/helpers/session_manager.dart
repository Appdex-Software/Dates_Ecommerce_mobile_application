import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String authToken = 'authorization';
  final String deviceToken = 'device-token';
  final String boardingVisit = 'boarding-visit';
  final String locale = 'locale';
  final String chosenMedicalCenter = 'chosen-medical-center';

  Future<void> setChosenMedicalCenter({int? centerId}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(chosenMedicalCenter, centerId ?? 0);
  }

  Future<int> getChosenMedicalCenter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int center;
    center = pref.getInt(chosenMedicalCenter) ?? 0;
    return center;
  }

  Future<void> setAuthToken({int? tokenn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(authToken, tokenn!);
  }

  Future<int> getAuthToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int tokenn;
    tokenn = pref.getInt(authToken) ?? 0;
    return tokenn;
  }


  Future<void> setLogin({bool? statue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(boardingVisit, statue!);
  }

  Future<bool> getLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool state;
    state = pref.getBool(boardingVisit) ?? false;
    return state;
  }
}

// ignore: library_private_types_in_public_api
final _SessionManager sessionManager = _SessionManager();
