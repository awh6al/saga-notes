import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesCard extends StatelessWidget {
  final String? createdAt;
  final String title;
  final String textPreview;
  final String? expireIn;
  final Color? notchColor;

  const NotesCard({
    Key? key,
    required this.title,
    required this.textPreview,
    required this.expireIn,
    required this.notchColor,
    this.createdAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 110),
        child: Card(
          shadowColor: Colors.transparent,
          child: ListTile(
              title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(createdAt!,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      )),
                  Container(
                      width: 20,
                      height: 5,
                      decoration: ShapeDecoration(
                          color: notchColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                            10,
                          )))))
                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(title,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(textPreview,
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        color: Colors.black45,
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(expireIn!,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      )),
                  const Icon(
                    Icons.alarm_rounded,
                    size: 14,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          )),
          margin: const EdgeInsets.all(5),
        ));
  }
}
