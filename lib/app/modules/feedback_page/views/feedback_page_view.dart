import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_mgmt/app/widgets/feedback_tile.dart';

import '../controllers/feedback_page_controller.dart';

class FeedbackPageView extends GetView<FeedbackPageController> {
  final FeedbackPageController feedbackPageController =
      Get.put(FeedbackPageController());
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
                      "Feedbacks",
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
                  itemCount: feedbackPageController.items.length,
                  itemBuilder: (context, index) {
                    return FeedbackTile(
                      subject: feedbackPageController.items[index][0],
                      feedback: feedbackPageController.items[index][1],
                      teacherName: feedbackPageController.items[index][2],
                      dateOfFeedback: feedbackPageController.items[index][3],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
