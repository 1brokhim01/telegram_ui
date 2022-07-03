import 'package:flutter/material.dart';
import 'package:telegram_application/core/components/p_m.dart';
import 'package:telegram_application/core/components/text_size.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/widgets/divider_widget.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';
import 'package:telegram_application/widgets/textbutton_wodget.dart';
import 'package:telegram_application/widgets/txt_widget.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController search_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sizedboxx(w: 60),
                txt(
                    txt: "Settings",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: TextSizeConst.large,
                    )),
                textButton(
                  txt: "Edit",
                  stylee: TextStyle(
                    fontSize: TextSizeConst.medium,
                  ),
                ),
              ],
            ),
            sizedboxx(h: 15),
            Padding(
              padding: Pad_MarConst.medium,
              child: sizedboxx(
                h: 36,
                ch: TextFormField(
                  controller: search_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "                Search for messages or users",
                  ),
                ),
              ),
            ),
            sizedboxx(h: 10),
            Container(
              height: 92,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  sizedboxx(h: 10),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/oval.png"),
                    ),
                    title: txt(txt: "Jacob W."),
                    subtitle: txt(txt: "+1 202 555 0147\n@jacob_d"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffefeff4),
              height: MediaQuery.of(context).size.height * 0.60,
              width: double.infinity,
              child: ListView(
                children: [
                  Column(
                    children: [
                      sizedboxx(h: 35),
                      Container(
                        width: double.infinity,
                        height: 44,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                sizedboxx(w: 15),
                                CircleAvatar(
                                  radius: 14,
                                  backgroundImage: NetworkImage(
                                      "https://source.unsplash.com/random/1"),
                                ),
                                sizedboxx(w: 15),
                                txt(
                                  txt: "Jacob Design",
                                  style: TextStyle(
                                    fontSize: TextSizeConst.medium,
                                  ),
                                ),
                              ],
                            ),
                            dividersettings()
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 44,
                        color: Colors.white,
                        child: Row(
                          children: [
                            sizedboxx(w: 5),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: ColorConst.blue,
                              ),
                            ),
                            sizedboxx(w: 5),
                            txt(
                              txt: "Add Account",
                              style: TextStyle(
                                  fontSize: TextSizeConst.medium,
                                  color: ColorConst.blue),
                            ),
                          ],
                        ),
                      ),
                      sizedboxx(h: 25),
                      card(img: "call.png", tt: "Recent Calls"),
                      card(img: "sticker.png", tt: "Stickers"),
                      card(img: "saved.png", tt: "Saved Messages"),
                      sizedboxx(h: 25),
                      card(
                          img: "notification.png",
                          tt: "Notifications and Sounds"),
                      card(img: "privacy.png", tt: "Privacy and Security"),
                      card(img: "data.png", tt: "Data and Storage"),
                      card(img: "apperance.png", tt: "Appearance"),
                      sizedboxx(h: 25),
                      card(img: "language.png", tt: "Languages"),
                      card(img: "ques.png", tt: "Ask a Question"),
                      card(img: "faq.png", tt: "Telegram FAQ"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container card({String? tt, String? img}) {
    return Container(
      color: Colors.white,
      height: 55,
      width: double.infinity,
      child: Column(
        children: [
          sizedboxx(h: 10),
          Row(
            children: [
              sizedboxx(w: 15),
              Container(
                height: 29,
                width: 29,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/$img"))),
              ),
              sizedboxx(w: 15),
              txt(
                txt: "$tt",
                style: TextStyle(
                  fontSize: TextSizeConst.medium,
                ),
              ),
            ],
          ),
          dividersettings()
        ],
      ),
    );
  }
}
