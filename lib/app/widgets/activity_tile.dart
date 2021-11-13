import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityTile extends StatelessWidget {
  final String from;
  final String name;
  final String explanation;
  final String subject;

  ActivityTile({
    this.subject="",
    this.from = "",
    this.name = "",
    this.explanation = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: from == "1"
              ? Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Icon(
                    Icons.person,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Icon(
                    Icons.sports,
                  ),
                ),
          title: Text(name),
          subtitle: Text(explanation),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Center(child: Text(name)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  content: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              explanation,
                              style: GoogleFonts.antic(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          from == "1"
                              ? Center(
                                  child: Text(
                                    subject,
                                    style: GoogleFonts.antic(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        Divider(
          thickness: 1.5,
        )
      ],
    );
  }
}
