import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/my_page/my_page_components/my_page_view_page_body.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_components/storehouse_my_storages_view_page_body.dart';

class MyPageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    double currentSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Align(
            child: SizedBox(
              width: currentSize < 340 ? double.infinity : bodyWidth,
              child: MyPageViewPageBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }
}
