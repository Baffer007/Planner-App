

import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade100,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(36.0),
              child: Container(),
            ),
            expandedHeight: 180,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    progressColor: Color(0xFFE57373),
                    backgroundColor: Colors.orange,
                    lineWidth: 3,
                    percent: 0.75,
                    radius: 72,
                    center: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/image1.jpg')),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text('Ahliddin B',
                            style: TextStyle(color: Color(0xff0d253f))),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Project Manager',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff6c6357),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            elevation: 12,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
            backgroundColor: Colors.orange,
          ),


          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "My tasks",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [


                      const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.redAccent,
                        child: Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12,),
                      Column(
                   crossAxisAlignment:  CrossAxisAlignment.start ,

                        children: const [
                          SizedBox(
                            width: 200,
                          ),
                          Text('To Do',
                              style: TextStyle(color: Color(0xff0d253f),fontWeight: FontWeight.bold)),

                          Text(
                            '5 tasks now . 1 started',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff6c6357),
                                fontWeight: FontWeight.w400),
                          ),

                        ],
                      ),

                    ],
                  ),


                ],
              ),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [


                      const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.orangeAccent,
                        child: Icon(
                          Icons.wb_sunny_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start ,

                        children: const [
                          SizedBox(
                            width: 200,
                          ),
                          Text('In Progress',
                              style: TextStyle(color: Color(0xff0d253f),fontWeight: FontWeight.bold)),

                          Text(
                            '1 task now . 1 started',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff6c6357),
                                fontWeight: FontWeight.w400),
                          ),

                        ],
                      ),

                    ],
                  ),


                ],
              ),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [


                      const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start ,

                        children: const [
                          SizedBox(
                            width: 200,
                          ),
                          Text('Done',
                              style: TextStyle(color: Color(0xff0d253f),fontWeight: FontWeight.bold)),

                          Text(
                            '18 tasks now . 18 completed',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff6c6357),
                                fontWeight: FontWeight.w400),
                          ),

                        ],
                      ),

                    ],
                  ),


                ],
              ),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Active Projects",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.teal,
                      height: 200,
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            backgroundColor: Colors.teal.shade400,
                            radius: 80,
                          percent: 0.25,
                            progressColor: Colors.white,
                            center: Text('25%',style: TextStyle(color: Colors.white,fontSize: 20),),


                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment:  CrossAxisAlignment.start ,
                              mainAxisAlignment: MainAxisAlignment.center,


                              children: const [
                                SizedBox(
                                  width: 200,
                                ),
                                Text('Medical App',
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),

                                Text(
                                  '9 hours progress',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.redAccent,
                      height: 200,
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            backgroundColor: Colors.red.shade400,
                            radius: 80,
                            percent: 0.75,
                            progressColor: Colors.white,
                            center: Text('75%',style: TextStyle(color: Colors.white,fontSize: 20),),


                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment:  CrossAxisAlignment.start ,
                              mainAxisAlignment: MainAxisAlignment.center,


                              children: const [
                                SizedBox(
                                  width: 200,
                                ),
                                Text('Sport App',
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),

                                Text(
                                  '40 hours progress',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.orangeAccent,
                      height: 200,
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            backgroundColor: Colors.orangeAccent.shade400,
                            radius: 80,
                            percent: 0.60,
                            progressColor: Colors.white,
                            center: Text('60%',style: TextStyle(color: Colors.white,fontSize: 20),),


                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment:  CrossAxisAlignment.start ,
                              mainAxisAlignment: MainAxisAlignment.center,


                              children: const [
                                SizedBox(
                                  width: 200,
                                ),
                                Text('Rent App',
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),

                                Text(
                                  '12 hours progress',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.lightBlueAccent,
                      height: 200,
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            backgroundColor: Colors.lightBlueAccent.shade400,
                            radius: 80,
                            percent: 0.52,
                            progressColor: Colors.white,
                            center: Text('52%',style: TextStyle(color: Colors.white,fontSize: 20),),


                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment:  CrossAxisAlignment.start ,
                              mainAxisAlignment: MainAxisAlignment.center,


                              children: const [
                                SizedBox(
                                  width: 200,
                                ),
                                Text('Banking App',
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),

                                Text(
                                  '32 hours progress',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),





        ],
      ),
    );
  }
}
