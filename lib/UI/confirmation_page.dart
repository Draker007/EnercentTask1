import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/text_component.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> with TickerProviderStateMixin {
  late AnimationController _controlleranimate;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      lowerBound: 0.4,
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    _controlleranimate = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _buildBody(),
    );
  }

  final dataMap = <String, double>{
    '': 5,
  };

  final colorList = <Color>[
    Colors.greenAccent,
  ];
  double value = 0;

  Widget _buildBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30,bottom: 30),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [

              Column(
                children: [
                  Expanded(
                    child: Container(
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration:  const BoxDecoration(
                              color: Colors.white,
                              borderRadius:  BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0))),
                          child:  Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Container(
                                                decoration:  const BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius:  BorderRadius.only(
                                                        topLeft: Radius.circular(10.0),
                                                        topRight: Radius.circular(10.0),
                                                        bottomRight: Radius.circular(10.0),
                                                      bottomLeft: Radius.circular(10.0),
                                                    )),child: Icon(Icons.add_location,color: Colors.white,size: 40,)),
                                            SizedBox(width: 10,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: myText(
                                                      'Total:',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 10,),
                                                Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: myText(
                                                      '₹ 350.40',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: myText(
                                                      'Final wallet balance ₹33456 ',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                      const DottedLine(
                                        dashLength: 3,
                                        dashGapLength: 2,
                                        lineThickness: .5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      'Unit Charged',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      'Total duration',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),

                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      '22kW',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      '67min',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),


                                          ],
                                        ),
                                      ),
                                      const DottedLine(
                                        dashLength: 3,
                                        dashGapLength: 2,
                                        lineThickness: .5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      'Base Charged',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      'Parking Charge',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),

                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      '₹279',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      '₹100',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),


                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      'Discount:',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      'Grand total:',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),

                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      '-₹279',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.greenAccent),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: myText(
                                                      '₹100',
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),


                                          ],
                                        ),
                                      ),
                                      const DottedLine(
                                        dashLength: 3,
                                        dashGapLength: 2,
                                        lineThickness: .5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: myText(
                                                  'Kadlu Gate, Redwood apartments \nCSS2, 12345,\n27 July 2021, 03:56PM',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),


                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ),


                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),

                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration:  const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius:  BorderRadius.all( Radius.circular(30.0))),
                                child:  Center(
                                  child: myText(
                                      'Done',textAlign: TextAlign.center,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),

                            ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
class DrawDottedhorizontalline extends CustomPainter {
  Paint? _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint?.color = Colors.black; //dots color
    _paint?.strokeWidth = 2; //dots thickness
    _paint?.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -300; i < 300; i = i + 15) {
      // 15 is space between dots
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint!);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
