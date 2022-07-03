import 'package:flutter/material.dart';
import 'package:telegram_application/core/components/p_m.dart';
import 'package:telegram_application/core/components/text_size.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/widgets/divider_widget.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';
import 'package:telegram_application/widgets/textbutton_wodget.dart';
import 'package:telegram_application/widgets/txt_widget.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  TextEditingController search_controller = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Pad_MarConst.medium,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt(
                    txt: "Edit",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.blue,
                    ),
                  ),
                  txt(
                    txt: "Chats",
                    style: TextStyle(
                        fontSize: TextSizeConst.large,
                        color: ColorConst.black,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mode_edit,
                      color: ColorConst.blue,
                    ),
                  ),
                ],
              ),
              sizedboxx(h: 20),
              sizedboxx(
                h: 36,
                ch: TextFormField(
                  controller: search_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "                 Search for messages or users",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
