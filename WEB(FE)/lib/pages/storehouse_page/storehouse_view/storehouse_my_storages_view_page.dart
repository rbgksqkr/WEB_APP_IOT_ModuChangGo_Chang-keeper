import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/controller/holder_controller.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';

class StoreHouseMyStoragesViewPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 255),
                      Text("창고 현황 / 창고 보기", style: hsubtitle3()),
                    ],
                  ),
                  _buildBody(),
                ],
              ),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildBody() {
    HolderController h = Get.find();

    return Obx(
      () => RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await h.findAll();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StoreHousePageLeftMenuBar(),
            Expanded(
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  h.holders.length,
                  (index) => StorageForm(
                    storageName: h.holders[index].id!.toString(),
                    location: h.holders[index].id!.toString(),
                    image_id: h.holders[index].id!,
                    formWidth: storage_edge_b + 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
