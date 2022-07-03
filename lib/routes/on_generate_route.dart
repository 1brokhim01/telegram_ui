import 'package:flutter/material.dart';
import 'package:telegram_application/screens/my_home_page.dart';
import 'package:telegram_application/view/telegram_authoration.dart';
import 'package:telegram_application/view/telegram_call.dart';
import 'package:telegram_application/view/telegram_chats.dart';
import 'package:telegram_application/view/telegram_contact.dart';
import 'package:telegram_application/view/telegram_edit_profile.dart';
import 'package:telegram_application/view/telegram_settings.dart';

class Routess {
  Route? onGenerateRoutes(RouteSettings s) {
    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case "/":
        return MaterialPageRoute(builder: (context) => Authorations());
      case "/chats":
        return MaterialPageRoute(builder: (context) => Chats());
      case "/contacts":
        return MaterialPageRoute(builder: (context) => Contacts());
      case "/settings":
        return MaterialPageRoute(builder: (context) => Settings());
      case "/calls":
        return MaterialPageRoute(builder: (context) => Call());
      case "/editProfiles":
        return MaterialPageRoute(builder: (context) => Edit_Profile());
    }
  }
}
