import 'package:flutter/material.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/view/telegram_call.dart';
import 'package:telegram_application/view/telegram_chats.dart';
import 'package:telegram_application/view/telegram_contact.dart';
import 'package:telegram_application/view/telegram_settings.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Contacts(),
          Call(),
          Chats(),
          Settings(),
        ],
      ),
      bottomNavigationBar: sizedboxx(
        h: 90,
        w: double.infinity,
        ch: TabBar(
          indicatorColor: ColorConst.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.perm_contact_calendar_outlined,
                color: ColorConst.blue,
              ),
              child: Text(
                "Contacts",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.call,
                color: ColorConst.blue,
              ),
              child: Text(
                "Calls",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.chat,
                color: ColorConst.blue,
              ),
              child: Text(
                "Chats",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                color: ColorConst.blue,
              ),
              child: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
