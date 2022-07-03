import 'package:flutter/material.dart';
import 'package:telegram_application/core/components/p_m.dart';
import 'package:telegram_application/core/components/text_size.dart';
import 'package:telegram_application/core/constants/const_color.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';
import 'package:telegram_application/widgets/txt_widget.dart';

class Authorations extends StatelessWidget {
  const Authorations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: SafeArea(
        child: Padding(
          padding: Pad_MarConst.medium,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt(
                    txt: "Cancel",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.blue,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/chats", (route) => false);
                    },
                    child: txt(
                      txt: "Next",
                      style: TextStyle(
                        fontSize: TextSizeConst.medium,
                        color: ColorConst.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              sizedboxx(h: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  txt(
                    txt: "Your Phone",
                    style: TextStyle(
                      fontSize: TextSizeConst.extraaaLarge,
                      color: ColorConst.black,
                    ),
                  ),
                ],
              ),
              sizedboxx(h: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  txt(
                    txt:
                        "Please confirm your country code \n   and enter your phone number.",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.black,
                    ),
                  ),
                ],
              ),
              sizedboxx(h: 50),
              // Divider(color: ColorConst.black),
              // sizedboxx(
              //   h: 35,
              //   w: double.infinity,
              //   ch: InkWell(
              //     onTap: () {},
              //     child: txt(
              //       txt: "USA",
              //       style: TextStyle(
              //         fontSize: TextSizeConst.extraLarge,
              //         color: ColorConst.black,
              //       ),
              //     ),
              //   ),
              // ),
              // Divider(color: ColorConst.black),
              // Row(
              //   children: [
              //     sizedboxx(
              //       h: 75,
              //       w: 67,
              //       ch: TextFormField(
              //         decoration: InputDecoration(
              //           hintText: " ",
              //         ),
              //       ),
              //     ),
              //     sizedboxx(
              //       h: 75,
              //       w: 326,
              //       ch: TextFormField(
              //         decoration: InputDecoration(
              //           hintText: "   Your phone number",
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              sizedboxx(h: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt(
                    txt: "Sync Contacts",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.black,
                    ),
                  ),
                  Switch.adaptive(
                    value: true,
                    onChanged: (v) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
