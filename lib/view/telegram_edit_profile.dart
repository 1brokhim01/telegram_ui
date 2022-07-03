import 'package:flutter/material.dart';
import 'package:telegram_application/core/components/p_m.dart';
import 'package:telegram_application/core/components/text_size.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/widgets/divider_widget.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';
import 'package:telegram_application/widgets/textbutton_wodget.dart';
import 'package:telegram_application/widgets/txt_widget.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  _Edit_ProfileState createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          sizedboxx(h: 55),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorConst.blue,
                ),
              ),
              textButton(
                  txt: "Back",
                  stylee: TextStyle(
                    fontSize: TextSizeConst.medium,
                  )),
              sizedboxx(w: 60),
              txt(
                txt: "Edit Profile",
                style: TextStyle(
                  fontSize: TextSizeConst.medium,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizedboxx(w: 90),
              textButton(
                  txt: "Done",
                  stylee: TextStyle(
                    fontSize: TextSizeConst.medium,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.88,
            width: double.infinity,
            color: ColorConst.scaffold_back,
            child: Column(
              children: [
                Container(
                  height: 92,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: [
                      sizedboxx(w: 25),
                      sizedboxx(
                        h: 66,
                        w: 66,
                        ch: CircleAvatar(
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.person)),
                          backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random"),
                        ),
                      ),
                      sizedboxx(w: 35),
                      Column(
                        children: [
                          sizedboxx(
                            h: 45,
                            w: 300,
                            ch: TextFormField(
                              decoration:
                                  InputDecoration(hintText: "First Name"),
                            ),
                          ),
                          sizedboxx(
                            h: 45,
                            w: 300,
                            ch: TextFormField(
                              decoration:
                                  InputDecoration(hintText: "Last Name"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                sizedboxx(h: 10),
                txt(txt: "Enter your name and add an optional profile photo."),
                sizedboxx(h: 20),
                Container(
                  color: Colors.white,
                  height: 44,
                  width: double.infinity,
                  child: Row(
                    children: [
                      sizedboxx(w: 20),
                      txt(
                        txt: "Digital goodies designer - Pixsellz",
                        style: TextStyle(
                          fontSize: TextSizeConst.medium,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedboxx(h: 20),
                txt(
                    txt:
                        "Any details such as age, occupation or city. \nExample: 23 y.o. designer from San Francisco."),
                sizedboxx(h: 23),
                Container(
                  color: Colors.white,
                  height: 54,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          txt(txt: "Change Number"),
                          txt(txt: "+1 202 555 0147"),
                          Icon(Icons.keyboard_arrow_right_rounded)
                        ],
                      ),
                      sizedboxx(h: 10),
                      divider(),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      txt(txt: "Username"),
                      sizedboxx(w: 1),
                      txt(txt: "@jacob_designer"),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                ),
                sizedboxx(h: 35),
                Container(
                  color: Colors.white,
                  height: 40,
                  width: double.infinity,
                  child: textButton(txt: "Add Account"),
                ),
                sizedboxx(h: 35),
                Container(
                  color: Colors.white,
                  height: 40,
                  width: double.infinity,
                  child: Center(
                    child: txt(
                        txt: "Log Out",
                        style: TextStyle(color: ColorConst.red)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
