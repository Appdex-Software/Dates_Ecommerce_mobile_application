import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String authToken = 'authorization';
  final String deviceToken = 'device-token';
  final String boardingVisit = 'boarding-visit';
  final String boardingVisitAdmin = 'boarding-visit-admin';
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

  Future<void> setAuthToken({String? tokenn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(authToken, tokenn!);
  }

  Future<String> getAuthToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String tokenn;
    tokenn = pref.getString(authToken) ?? '';
    return tokenn;
  }

  Future<void> setLogin({bool? statue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(boardingVisit, statue!);
  }

  Future<void> setAdminLogin({bool? statue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(boardingVisitAdmin, statue!);
  }

  Future<bool> getLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool state;
    state = pref.getBool(boardingVisit) ?? false;
    return state;
  }

  Future<bool> getAdminLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool state;
    state = pref.getBool(boardingVisitAdmin) ?? false;
    return state;
  }
}

// ignore: library_private_types_in_public_api
final _SessionManager sessionManager = _SessionManager();
