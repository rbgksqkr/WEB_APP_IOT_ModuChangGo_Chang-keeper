import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/page_left_menu_bar_function_block.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/my_page/my_page_edit_page.dart';
import 'package:moduchango/pages/my_page/my_page_view_page.dart';


class MyPageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: gap_l),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 180,
                  height: 3,
                  color: Colors.grey,
                ),
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "회원정보 보기",
                funPageRoute: () {
                  Get.to(() => MyPageViewPage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "회원 정보 수정",
                funPageRoute: () {
                  Get.to(() => MyPageEditPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
