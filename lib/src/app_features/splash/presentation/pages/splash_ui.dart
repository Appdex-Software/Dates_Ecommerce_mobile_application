import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/routes/app_router.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  int chosenMedicalCenter = 0;
  _navigationTimer() async {
    Timer(const Duration(seconds: 2), () async {
      context.router.replace(const LoginRoute());
    });
  }


  @override
  void initState() {
    super.initState();
    _navigationTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Center(
          child: Image.asset(AssetsHelper.logoImagePng,width: 50.sw,)
        ),
      ],
    );
  }
}
