import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_mgmt/app/widgets/activity_tile.dart';

import '../controllers/activites_page_controller.dart';

class ActivitesPageView extends GetView<ActivitesPageController> {
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
                      "Activities",
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
                child: FutureBuilder(
                  // future: activities,
                  builder: (context, snapshots) {
                    if (!snapshots.hasData || snapshots.data.length == 0) {
                      return Center(
                          child: Text('No Activities Right now',
                              style: GoogleFonts.antic(
                                  fontWeight: FontWeight.bold, fontSize: 30)));
                    }
                    return ListView.builder(
                      itemCount: snapshots.data.length,
                      itemBuilder: (context, index) {
                        return ActivityTile(
                          name: snapshots.data[index]['name'],
                          explanation: snapshots.data[index]['explanation'],
                        );
                      },
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
