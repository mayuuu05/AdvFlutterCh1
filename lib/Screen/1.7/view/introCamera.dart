import 'package:advflutter_ch1/Screen/1.7/view/photo_gallery_with_biometric_authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Introcamera extends StatelessWidget {
  const Introcamera({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background image
            Container(
              height: height,
              width: width,
              child: Image.asset('assets/images/cam.png', fit: BoxFit.cover,),
            ),
            // Dark overlay
            Container(
              height: height,
              width: width,
              color: Colors.black.withOpacity(0.6),
            ),
            // Text and button
            Positioned(
              top: height * 0.04,
              left: width * 0.1,
              right: width * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
      
                  Text(
                    'Photo',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height*0.5-20),
                  Text(
                    'Explore your Capture.',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height*0.03),
                  Text(
                    'Share your capture with Photo Gallery',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: height*0.05),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PhotoGalleryWithBiometricAuthentication()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}