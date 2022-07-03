import 'package:flutter/material.dart';
import 'package:telegram_application/widgets/sizedbox_widget.dart';

Row divider() {
  return Row(
    children: [
      sizedboxx(w: 90),
      sizedboxx(
        w: 338,
        ch: Divider(
          color: Colors.grey,
        ),
      ),
    ],
  );
}
Row dividersettings() {
  return Row(
    children: [
      sizedboxx(w: 60),
      sizedboxx(
        w: 366,
        ch: Divider(
          color: Colors.grey,
        ),
      ),
    ],
  );
}
