import 'package:advflutter_ch1/Screen/1.6(2)/provider/contectProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContectPage extends StatelessWidget {
  const ContectPage({super.key});

  @override
  Widget build(BuildContext context) {
    Contectprovider contectprovider = Provider.of(context,listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'If you have any queries, get in touch with us. We\nwill be happy to help you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              GestureDetector(
                onTap: () {
                  contectprovider.launchPhone();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: height / 15,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all( color: Colors.blue.shade100,),
                      borderRadius: BorderRadius.circular(7)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone_android_sharp,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: width / 20,
                      ),
                      const Text(
                        '+91 12345 67890',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  contectprovider.launchSms();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: height / 15,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all( color: Colors.blue.shade100,),
                      borderRadius: BorderRadius.circular(7)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.sms_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: width / 20,
                      ),
                      const Text(
                        '+91 12345 67890',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  contectprovider.launchMail();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: height / 15,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all( color: Colors.blue.shade100,),
                      borderRadius: BorderRadius.circular(7)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: width / 20,
                      ),
                      const Text(
                        'info@xyzmail.com',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: height / 2.5,
                width: width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all( color: Colors.blue.shade100,),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Social Media',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.w500),),
                    ),
                    Divider(
                      color: Colors.blue.shade100,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(
                          left: 30,
                          top: 8
                      ),
                      child: Row(

                        children: [
                          SizedBox(
                            width: width/28,
                          ),
                          Image.asset('assets/images/github.png',height: height/19,),
                          GestureDetector(
                              onTap: () {
                                contectprovider.launchGithub();
                              },
                              child: Text('        Github',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w500),))
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.blue.shade100,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(
                          left: 30,
                          top: 8
                      ),
                      child: Row(

                        children: [
                          Image.asset('assets/images/amazon.png',height: height/15,),
                          GestureDetector(
                            onTap: () {
                              contectprovider.launchAmazon();
                            },
                              child: Text('         Amazon',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w500),))
                        ],
                      ),
                    ),

                    Divider(
                      color: Colors.blue.shade100,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(
                          left: 30,
                          top: 8
                      ),
                      child: Row(

                        children: [
                          Image.asset('assets/images/drib.png',height: height/15,),
                          GestureDetector(
                              onTap: () {
                                contectprovider.launchDribble();
                              },
                              child: Text('        Dribble',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.w500),))
                        ],
                      ),
                    ),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
