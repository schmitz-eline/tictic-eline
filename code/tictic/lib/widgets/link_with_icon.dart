import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';

import '../constants/fonts.dart';

class LinkWithIcon extends StatelessWidget {
  const LinkWithIcon({super.key, this.onTap, this.icon, required this.text});

  final GestureTapCallback? onTap;
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon),
        title: Text(text, style: kTextSideBar.apply(color: kMainColor)),
      ),
    );
  }
}
