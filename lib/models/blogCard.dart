import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class BlogCard extends StatefulWidget {
  final String blogTitle;
  final String blogTime;
  final String blogDescription;
  final String blogImage;
  BlogCard(this.blogImage, this.blogTitle, this.blogTime, this.blogDescription);
  @override 
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard>{
@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: Card(
      color: Color(0xFFF5F5F5),
      child: InkWell(
        splashColor: Color(0xFFF5F5F5),
        onTap: () {},
        child: Container(
          height: height * 0.35,
          width: width * 0.95,
          child: Padding( 
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [
                  Image.asset(widget.blogImage, width: width * 0.3, height: height * 0.15,),
                  Center(
                    child: Container(
                      width: width * 0.4,
                      child: Text(
                        widget.blogTitle,
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: kTextColorTitle, 
                              fontSize: 18
                          )
                          ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Text(
                        widget.blogTime,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.normal, 
                            color: Colors.black, 
                            fontSize: 14
                        )
                        ),
                      ),
                      ),
                  )
                  ]
                ),
                SizedBox(height : height * 0.02),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.blogDescription,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.normal, 
                            color: Colors.black, 
                            fontSize: 18,
                        )
                        ),
                      ),
                      TextSpan(
                        text: '\nPour en savoir plus',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold, 
                            color: kPrimaryColorS, 
                            fontSize: 18
                        )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
 }
}