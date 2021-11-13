import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/activites_page_controller.dart';

class ActivitesPageView extends GetView<ActivitesPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ActivitesPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ActivitesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
