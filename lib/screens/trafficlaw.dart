
import 'package:carapp/screens/homepage.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../constants/colors.dart';
import '../models/trafficlaw.dart';

class TrafficLaw extends StatelessWidget {
  const TrafficLaw({super.key});

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
                              Get.to(() => const HomeScreen());
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
                padding: const EdgeInsets.only(
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
                child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.0,
                            crossAxisSpacing: 10.0,
                          ),
                          itemCount: laws.length,
                          itemBuilder: (context, index){
                            return GestureDetector(
                              onTap: (){
                                showModalBottomSheet(

                                    context: context,
                                    builder: (BuildContext context){
                                      return Container(
                                        width: double.infinity,
                                          child:
                                          Column(
                                            children: [
                                              Text("Section ${laws[index].number}-${laws[index].title}"),
                                              Text(laws[index].description),
                                            ],
                                          ));
                                    });
                              },

                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 6
                                      )
                                    ]
                                ),
                                  child: Text(laws[index].number,
                                    style:  GoogleFonts.lato(
                                      color: Colors.black87,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500

                                    )),

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