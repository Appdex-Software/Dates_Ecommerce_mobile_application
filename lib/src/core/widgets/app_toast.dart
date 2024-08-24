import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../themes/app_themes.dart';

class AppToast {
  static successToast(String msg, BuildContext context) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: FlutterFlowTheme.of(context).greenChalk,
      textColor: FlutterFlowTheme.of(context).whiteColor,
      fontSize: 20.0,
    );
  }

  static errorToast(String msg, BuildContext context) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: FlutterFlowTheme.of(context).redApple,
        textColor: FlutterFlowTheme.of(context).white,
        fontSize: 20.0);
  }

  static infoToast(String msg, BuildContext context) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: FlutterFlowTheme.of(context).white,
      textColor: FlutterFlowTheme.of(context).whiteColor,
      fontSize: 20.0,
    );
  }
}
