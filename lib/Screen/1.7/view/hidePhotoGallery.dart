import 'package:advflutter_ch1/Screen/1.7/globals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hidephotogallery extends StatelessWidget {
  const Hidephotogallery({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: Text(
          'Hide Gallery',
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white,)
        ],

      ),
      body: Column(
        children: [
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    Text(
                      'Select',
                      style: TextStyle(
                          color: CupertinoColors.activeBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),

                  ],
                ),
              ),
              Wrap(
                children: [
                  ...List.generate(
                      hideList.length,
                          (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.09,
                          width: width * 0.20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(hideList[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
