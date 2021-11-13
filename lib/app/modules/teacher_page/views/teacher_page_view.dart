import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_mgmt/app/widgets/activity_tile.dart';

import '../controllers/teacher_page_controller.dart';

class TeacherPageView extends GetView<TeacherPageController> {
  final TeacherPageController teacherPageController =
      Get.put(TeacherPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromRGBO(154, 233, 178, 1),
              Color.fromRGBO(173, 187, 238, 1),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Teachers",
                      style: GoogleFonts.antic(
                        textStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(100))),
                  padding: EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: teacherPageController.teachers.length,
                    itemBuilder: (context, index) {
                      return ActivityTile(
                        from: "1",
                        name: teacherPageController.teachers[index][0],
                        explanation: teacherPageController.teachers[index][1],
                        subject: teacherPageController.teachers[index][2],
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
