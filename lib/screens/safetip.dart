import 'package:carapp/models/menuitems.dart';
import 'package:carapp/screens/homepage.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../constants/colors.dart';

class SafeTip extends StatelessWidget {
  const SafeTip({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: otherColor,
          // height: height,
          width: width,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: otherColor,
                ),
                height: height * 0.25,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => HomeScreen());
                            },
                            child: const Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          // TODO: I will Change it later.
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Driver',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'change later',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white38,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
        Container(
           padding: EdgeInsets.only(
             top: 20,
             left: 30,
             right: 30,
           ),
          decoration: const BoxDecoration(
            color: Colors.white,
      
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          height: height * 0.75,
          width: width,
          child:ListView.builder(
            itemCount: items.length,
              itemBuilder: (context, index){
              return  Card(
                margin: const EdgeInsets.only(
                  bottom: 5
                ),
                elevation: 5,
                surfaceTintColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // color: Colors.grey.shade300,
                child:  ExpansionTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  childrenPadding: EdgeInsets.only(left: 5),
                  // backgroundColor: Color.fromARGB(255, 0, 30, 57),
                  // collapsedBackgroundColor: Color.fromARGB(176, 0, 30, 57),
                  title: Text(
                     "Tip ${items[index].tipNumber}",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87
                    )
                  ),
                  subtitle: Text(
                    items[index].title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.black54),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                items[index].description,
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              );

              }) ,
        ),
            ],
          ),
        ),
      ),
    );
  }
}