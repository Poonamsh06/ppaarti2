import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:pujapurohit/responsive.dart';

import 'aarti_page_view.dart';

class AartiPage extends StatelessWidget {
  var item_no = 0.obs;
  AartiPage(int p_item_no) : item_no = p_item_no.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ResponsiveWidget.isSmallScreen(context) ? MobileViewAartiPage(item_no.value) : WideScreenAartiPage(item_no.value)
    ));
  }
}




