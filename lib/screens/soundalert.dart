import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../controllers/time_controller.dart';


class DriveAlertPage extends StatelessWidget {
  DriveAlertPage({super.key});

  final _controller = Get.put(TimeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),

        appBar: AppBar(
          backgroundColor:   otherColor,
          title: const Text('Driver Helper', style: TextStyle(color: Colors.white),),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: const [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.drive_eta, color: Colors.white,),
                  SizedBox(width: 10,),
                  Icon(Icons.settings, color: Colors.white,),
                ],
              ),
            )
          ],

        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(2)
                      ),
                      color: Colors.black87,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, -1,), // changes position of shadow
                        ),
                      ],
                    ),
                  child: Obx(() => Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text(
                      _controller.isTimerRunning
                          ? 'Time remaining: ${_controller.remainingSeconds}s'
                          : 'Timer stopped',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,

                      ),
                    ),
                  )),

              ),
              // const SizedBox(height: 10,),
              Column(
                children: [
                  const SizedBox(height: 30,),
                  Text(
                    'Choose Time:',
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
          
                    ),
                  ),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hours:',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
          
                            ),
                          ),
                          const SizedBox(width: 10),
                          Obx(() => DropdownButton<int>(
                            value: _controller.hours,
                            dropdownColor: Colors.white,
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
          
                            ),
                            menuMaxHeight: 300,
                            items: List.generate(25, (index) => index).map((hour) {
                              return DropdownMenuItem<int>(
                                value: hour,
                                child: Text('$hour'),
                              );
                            }).toList(),
                            onChanged: (hour) {
                              _controller.updateHours(hour!);
                            },
                          )),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Minutes:',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
          
                            ),
                          ),
                          const SizedBox(width: 10),
                          Obx(() => DropdownButton<int>(
                            dropdownColor: Colors.white,
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
          
                            ),
                            menuMaxHeight: 300,
          
                            value: _controller.minutes,
                            items: List.generate(60, (index) => index).map((minute) {
                              return DropdownMenuItem<int>(
          
                                value: minute,
                                child: Text('$minute'),
                              );
                            }).toList(),
                            onChanged: (minute) {
                              _controller.updateMinutes(minute!);
                            },
                          )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
          
          
                      GestureDetector(
                        onTap: () {
                          _controller.startTimer();
                        },
                        child: Container(
                          width:100,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(1, -1,), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: Padding(
                            padding:  const EdgeInsets.only(top: 35),
                            child:  Text('Start',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ), ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          _controller.stopTime();
                        },
                        child: Container(
                          width:100,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.redAccent,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(1, -1,), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child:  Padding(
                            padding:  const EdgeInsets.only(top: 35),
                            child:  Text('Stop',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                              ),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
          
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}