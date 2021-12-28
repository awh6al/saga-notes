import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_row_column.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ResponsiveRowColumnItem(
                rowFlex: 6,
                rowFit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    columnSpacing: 10,
                    children: [
                      ResponsiveRowColumnItem(
                          child: Form(
                              child: SizedBox(
                                  height: 32,
                                  child: TextField(
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                      cursorColor: Colors.black45,
                                      cursorWidth: 0.5,
                                      textAlignVertical:
                                          const TextAlignVertical(y: -1),
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 8,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.search,
                                            size: 13,
                                            color: Colors.black45,
                                          ),
                                          hintText: '  Search',
                                          hintStyle: GoogleFonts.poppins(
                                            fontSize: 11,
                                            color: Colors.black45,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              borderSide: const BorderSide(
                                                style: BorderStyle.none,
                                                width: 0,
                                              ))))))),
                      ResponsiveRowColumnItem(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Notes',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 28,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: InkWell(
                                        child: Ink(
                                          child: const Icon(
                                            Icons.add,
                                            size: 46,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ))),
                      ResponsiveRowColumnItem(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 110),
                        child: Card(
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                              title: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('11.44 am',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600)),
                                  Container(
                                    width: 20,
                                    height: 5,
                                    decoration: const ShapeDecoration(
                                        color: Colors.red,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  )
                                ],
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Play video calls",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      color: Colors.black45,
                                    ),
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('in 3 hrs 34 min',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600)),
                                  Icon(
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
                        ),
                      )),
                      ResponsiveRowColumnItem(
                          child: ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 110),
                        child: Card(
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                              title: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('11.44 am',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600)),
                                  Container(
                                    width: 20,
                                    height: 5,
                                    decoration: const ShapeDecoration(
                                        color: Colors.cyan,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  )
                                ],
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Product management meeting",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      color: Colors.black45,
                                    ),
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('in 3 hrs 34 min',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  Icon(
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
                        ),
                      )),
                    ],
                  ),
                )),
            ResponsiveRowColumnItem(
                rowFlex: 8,
                rowFit: FlexFit.tight,
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  columnPadding: const EdgeInsets.all(30),
                  columnSpacing: 10,
                  children: [
                    ResponsiveRowColumnItem(
                        child: Image.network(
                      'https://cdn.dribbble.com/users/1634920/screenshots/14778149/media/c9f9468909b989dc8075a7d5c822ed75.jpg',
                      width: 200,
                      height: 200,
                    )),
                    ResponsiveRowColumnItem(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text('Write your own ideas',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                )),
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 4),
                              child: const Icon(
                                Icons.wb_incandescent_outlined,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '#ideas #morning #todos',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                        style: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Morning',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                        child: Row(
                      children: [
                        Transform.scale(
                            scale: 0.6,
                            child: Checkbox(
                              value: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              fillColor:
                                  MaterialStateProperty.all(Colors.orange),
                              checkColor: Colors.white,
                              onChanged: (value) {},
                            )),
                        Text('setup meeting with wahabz',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black87,
                            )),
                        Transform.scale(
                            scale: 0.6,
                            child: Checkbox(
                              value: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              fillColor:
                                  MaterialStateProperty.all(Colors.orange),
                              checkColor: Colors.white,
                              onChanged: (value) {},
                            )),
                        Text('make checkbox',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black87,
                            )),
                      ],
                    )),
                  ],
                ))
          ],
        ));
  }
}
