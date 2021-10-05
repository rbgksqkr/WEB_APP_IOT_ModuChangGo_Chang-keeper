import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/login_page/login_page.dart';

class PageLeftMenuBarFunctionBlock extends StatelessWidget {
  final mText;
  final funPageRoute;

  const PageLeftMenuBarFunctionBlock({
    required this.mText,
    this.funPageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funPageRoute,
      child: Padding(
        padding: const EdgeInsets.all(gap_s),
        child: Text(
          "$mText",
          style: h3(isBold: false),
        ),
      ),
    );
  }
}
