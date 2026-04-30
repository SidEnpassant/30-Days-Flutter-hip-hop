

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:testapp/bloc_state_management/flutter_bloc_clean_coding/config/routes/routes_name.dart';

class SplashServices {


  void isLogin(BuildContext context){
    Timer(const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(  // pushNamedAndRemoveUntil because then splash will be dropped from stack and killed so that when going back should not go to splash
                context,
                RoutesName.loginScreen,
                (route) => false
            )
    );
  }
}