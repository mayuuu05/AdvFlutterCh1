import 'package:advflutter_ch1/Screen/1.7/provider/photoGalleryProvider.dart';
import 'package:advflutter_ch1/Screen/1.7/view/hidePhotoGallery.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../globals/globals.dart';

class PhotoGalleryWithBiometricAuthentication extends StatelessWidget {
  const PhotoGalleryWithBiometricAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Photogalleryprovider photogalleryprovider = Provider.of<Photogalleryprovider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.black,
          // leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          title: Text(
            'Gallery',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          actions: [
            PopupMenuButton<int>(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onSelected: (value) {
                switch (value) {
                  case 1:
                    if(value==1)
                      {
                        photogalleryprovider.localUserAuthentication(context);
                      }
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Hidephotogallery()));
                    break;
                  case 2:

                    break;
                  case 3:
                    break;
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    leading: Icon(Icons.hide_image, color: Colors.white),
                    title: Text('Hide photos', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: ListTile(
                    leading: Icon(Icons.edit, color: Colors.white),
                    title: Text('Edit', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: ListTile(
                    leading: Icon(Icons.settings, color: Colors.white ),
                    title: Text('Setting', style: TextStyle( color: Colors.white)),
                  ),
                ),
              ],
              color: Colors.grey[800]
              ,
            ),
          ],

        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0), // Padding for the grid view
          child: GridView.builder(
            itemCount: galleryList.length, // Update to the length of galleryList
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.7
            ),
            itemBuilder: (context, index) {
              final item = galleryList[index]; // Get the item from the list
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item['img']!), // Load image from assets
                          fit: BoxFit.cover, // Adjust the image to cover the container
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0), // Space between image and text
                  Text(
                    item['title']!, // Use title from galleryList
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12, // Adjusted font size
                    ),
                  ),
                  Text(
                    item['total']!, // Use total from galleryList
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10, // Adjusted font size for total
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}