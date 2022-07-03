import 'package:flutter/material.dart';
import 'package:telegram_application/core/components/text_size.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/widgets/divider_widget.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';
import 'package:telegram_application/widgets/txt_widget.dart';

class Contacts extends StatefulWidget {
  Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List names = [
    "Ali",
    "Beatriz",
    "Charles",
    "Diya",
    "Eric",
    "Fatima",
    "Gabriel",
    "Hanna",
    "Gabriel",
    "Hanna",
    "Ali",
    "Beatriz",
    "Charles",
    "Diya",
    "Eric",
  ];
  List snames = [
    "Ali",
    "Beatriz",
    "Charles",
    "Diya",
    "Eric",
    "Fatima",
    "Gabriel",
    "Hanna",
    "Gabriel",
    "Hanna",
    "Ali",
    "Beatriz",
    "Charles",
    "Diya",
    "Eric",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.scaffold_back,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sizedboxx(w: 50),
                txt(
                  txt: "Contacts",
                  style: TextStyle(
                    fontSize: TextSizeConst.medium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: ColorConst.blue,
                  ),
                ),
              ],
            ),
            fff(
              icon: Icons.location_on_outlined,
              t: "Add People Nearby",
            ),
            divider(),
            fff(
              icon: Icons.person_add_alt_1_rounded,
              t: "Invite Friends",
            ),
            divider(),
            Container(
              height: MediaQuery.of(context).size.height * 0.66,
              width: MediaQuery.of(context).size.height * 1,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 48,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/$index",
                            ),
                          ),
                          title: txt(txt: names[index] + "  " + snames[index]),
                          subtitle: txt(
                            txt: "online",
                            style: TextStyle(
                              color: ColorConst.blue,
                            ),
                          ),
                        ),
                      ),
                      sizedboxx(h: 8),
                      divider(),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row fff({String? t, IconData? icon}) {
    return Row(
      children: [
        sizedboxx(w: 35),
        Icon(
          icon,
          color: ColorConst.blue,
        ),
        sizedboxx(w: 20),
        TextButton(
          onPressed: () {},
          child: txt(
            txt: "$t",
            style: TextStyle(fontSize: TextSizeConst.medium),
          ),
        ),
      ],
    );
  }
}
