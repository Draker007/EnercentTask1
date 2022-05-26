import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/text_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
      appBar: AppBar(
        centerTitle: true,
          title: const Text(
            "MG Motors ZS EV",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white),
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
    return AnimatedBuilder(
      animation:
          CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0,right: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    height: 50,
                    decoration:   BoxDecoration(
                        color: Colors.greenAccent.shade100,
                        borderRadius:  BorderRadius.all(Radius.circular(10.0),
                        )),
                    child:   Center(
                      child: myText(
                          'CHARGING IN PROGRESS',textAlign: TextAlign.center,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(

                    ),
                  ),


                ],
              ),
              Positioned(
                left: 0,
                right:0,
                bottom: 0,
                child: Container(
                child:  Container(
                  width: MediaQuery.of(context).size.width,
                  decoration:  const BoxDecoration(
                      color: Colors.black,
                      borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  child:  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 100,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Column(

                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  height: 4,
                                  decoration:  const BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius:  BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      )),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    myText(
                                        'ENERGY\nCONSUMED',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    SizedBox(width: 10,),
                                    myText(
                                        '0.35kWh',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.greenAccent),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  height: 4,
                                  decoration:  const BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius:  BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      )),
                                ),
                                Row(
                                  children: [
                                    myText(
                                        'TIME\nREMAINING',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    SizedBox(width: 10,),
                                    myText(
                                        '0h : 20min',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration:  const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:  BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:17.0),
                          child: myText(
                              'CHARGER DETAILS',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Expanded(
                                child: Column(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.add_location,color: Colors.yellow,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            myText(
                                                'Sobha Mall',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            SizedBox(width: 10,),
                                            myText(
                                                'Ashok Nagar, Bangalore',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          ],
                                        ),
                                        SizedBox(width: 5,),
                                        Container(
                                          height: 40,
                                          width: 1,

                                          decoration:  const BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:  BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                                bottomLeft: Radius.circular(10.0),
                                                bottomRight: Radius.circular(10.0),
                                              )),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.add_location,color: Colors.yellow,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            myText(
                                                'AC',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            SizedBox(width: 10,),
                                            myText(
                                                'Type 2 55',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 40,
                                      width: 1,

                                      decoration:  const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:  BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                          )),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.add_location,color: Colors.yellow,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            myText(
                                                'AC',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            SizedBox(width: 10,),
                                            myText(
                                                'Type 2 55',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(
                                context,
                                'confirmation_screen'
                            );

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration:  const BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius:  BorderRadius.all(Radius.circular(20.0),
                                  )),
                              child:   Center(
                                child: myText(
                                    'Stop Session',textAlign: TextAlign.center,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right:0,
                child: Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10,top: 10),
                  child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  ),

                    child: Stack(

                      alignment: Alignment.center,
                      children: <Widget>[
                        // _buildContainer(150 * _controller.value),
                        // _buildContainer(200 * _controller.value),
                        // _buildContainer(250 * _controller.value),
                        _buildContainer(180 * _controller.value),
                        _buildContainer(280 * _controller.value),
                        Align(
                            child: Image.asset(
                              'assets/images/carimg.png',
                              height: 200,
                              width: 100,
                            )),
                        RotationTransition(
                          turns: Tween(begin: 0.0, end: 1.0)
                              .animate(_controlleranimate),
                          child: CircularPercentIndicator(
                            radius: 150.0,
                            lineWidth: 30.0,
                            percent: 0.5,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.white,
                            progressColor: Colors.blue,
                          ),
                        ),
                        RotationTransition(
                          turns:
                          Tween(begin: 0.0, end: 1.0).animate(_controlleranimate),
                          child: CircularPercentIndicator(
                            radius: 120.0,
                            lineWidth: 30.0,
                            percent: 0.8,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.white,
                            progressColor: Colors.yellow,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildContainer(double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.greenAccent.withOpacity(1 - _controller.value),
      ),
    );
  }
}
