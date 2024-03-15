import 'package:flutter/material.dart';
import 'variable.dart';



keyboard(a) {
  Widget shape;
  if (a == 0) {
    shape = Container(
      //keyboard
      padding: EdgeInsets.all(5.0),
      color: Color(0xFF8D5A5A),
      height: ranadsize,
      width: keyboardwidth,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            for (var i = 0; i < 15; i++)
              Container(
                child: Row(
                  children: [
                    AnimatedContainer(
                      height: 240,
                      width: 60,
                      duration: const Duration(seconds: 2),
                      curve: Curves.easeIn,
                      child: Material(
                        color: Color(0xFF653636),
                        //color: Color.fromARGB(255, 162, 132, 94),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        child: InkWell(
                          child: Align(
                            alignment: Alignment.topCenter,
                            // child: Text(
                            //   //getTextFromI(i),
                            //   // ใช้ฟังก์ชัน getTextFromI เพื่อแปลงค่า I เป็นข้อความ
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //     fontSize: 20,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ),
                          onTap: () {
                            switch (i) {
                              case 0:
                                G0 = true;
                                break;
                              case 1:
                                A0 = true;
                                break;
                              case 2:
                                B0 = true;
                                break;
                              case 3:
                                C = true;
                                break;
                              case 4:
                                D = true;
                                break;
                              case 5:
                                E = true;
                                break;
                              case 6:
                                F = true;
                                break;
                              case 7:
                                G = true;
                                break;
                              case 8:
                                A = true;
                                break;
                              case 9:
                                B = true;
                                break;
                              case 10:
                                C1 = true;
                                break;
                              case 11:
                                D1 = true;
                                break;
                              case 12:
                                E1 = true;
                                break;
                              case 13:
                                F1 = true;
                                break;
                              case 14:
                                G1 = true;
                                break;
                              default:
                              // Code to execute when i doesn't match any case
                            }
                            // setState(() {
                            //   if (JK == true) {
                            //     edit();
                            //   }
                            //   simulator(i);
                            // });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                  ],
                ),
              )
            // Your widgets here
          ],
        ),
      ),
    );
  } else if (a == 2) {
    shape = Container(
      //keyboard
      padding: EdgeInsets.all(5.0),
      color: Color(0xFF8D5A5A),
      height: ranadsize,
      width: keyboardwidth,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            for (var i = 0; i < 17; i++) //iจะเป็นตําแหน่งลื่มโน้ต
              Container(
                child: Row(
                  children: [
                    AnimatedContainer(
                      height: 240,
                      width: 60,
                      duration: const Duration(seconds: 2),
                      curve: Curves.easeIn,
                      child: Material(
                        //color: Color(0xFFFFB9A9),
                        color: Color.fromARGB(255, 162, 132, 94),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        child: InkWell(
                          child: Align(
                            alignment: Alignment.topCenter,
                          //   child: Text(
                          //     getTextFromII(i),
                          //     // ใช้ฟังก์ชัน getTextFromI เพื่อแปลงค่า I เป็นข้อความ
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       fontSize: 20,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                           ),
                          onTap: () {
                            switch (i) {
                              case 0:
                                E0 = true;
                                break;
                              case 1:
                                F0 = true;
                                break;
                              case 2:
                                G0 = true;
                                break;
                              case 3:
                                A0 = true;
                                break;
                              case 4:
                                B0 = true;
                                break;
                              case 5:
                                C = true;
                                break;
                              case 6:
                                D = true;
                                break;
                              case 7:
                                E = true;
                                break;
                              case 8:
                                F = true;
                                break;
                              case 9:
                                G = true;
                                break;
                              case 10:
                                A = true;
                                break;
                              case 11:
                                B = true;
                                break;
                              case 12:
                                C1 = true;
                                break;
                              case 13:
                                D1 = true;
                                break;
                              case 14:
                                E1 = true;
                                break;
                              case 15:
                                F1 = true;
                                break;
                              case 16:
                                G1 = true;
                                break;
                              default:
                              // กรณีไม่ตรงกับค่าที่กำหนด
                                break;
                            }
                            // setState(() {
                            //   if (JK == true) {
                            //     edit();
                            //     // datatowidget();
                            //   }
                            //   simulator(i);
                            // });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                  ],
                ),
              )
            // Your widgets here
          ],
        ),
      ),
    );
  } else {
    shape = Text('ไม่รองรับค่า a นอกจาก 1 และ 2');
  }

  return Center(
    child: shape,
  );
}