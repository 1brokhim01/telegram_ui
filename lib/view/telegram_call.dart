import 'package:flutter/material.dart';

import 'package:telegram_application/core/components/p_m.dart';
import 'package:telegram_application/core/components/text_size.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/widgets/divider_widget.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';
import 'package:telegram_application/widgets/textbutton_wodget.dart';
import 'package:telegram_application/widgets/txt_widget.dart';
class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textButton(
                  txt: "Edit",
                  stylee: TextStyle(
                    fontSize: TextSizeConst.medium,
                  ),
                ),
                txt(
                  txt: "All  |  Missed",
                  style: TextStyle(
                    fontSize: TextSizeConst.medium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_ic_call_outlined,
                    color: ColorConst.blue,
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.height * 1,
              child: ListView.builder(
                itemCount: 25,
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
                            txt: "Outgoing",
                            style: TextStyle(
                              color: ColorConst.blue,
                            ),
                          ),
                          trailing: Icon(
                            Icons.info_outline,
                            color: ColorConst.blue,
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
}

