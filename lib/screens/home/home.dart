import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List services = [
    {'image': 'images/registration.png', 'title': 'Registration'},
    {'image': 'images/compliance.png', 'title': 'Compliance'},
    {'image': 'images/licenses.png', 'title': 'Licenses'},
    {'image': 'images/legal.png', 'title': 'Legal'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications)],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Expanded(
            child: Column(
              children: [
                divder(),
                Container(
                  padding: EdgeInsets.all(35),
                  child: Image.asset('images/promo-card.png'),
                ),
                divder(),
                Container(
                  padding: EdgeInsets.all(35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Services',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(height: 28),
                      Container(
                        height: 85,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: services.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(children: [
                                Image.asset(
                                  services[index]['image'],
                                  height: 54,
                                ),
                                SizedBox(height: 12),
                                TextWidget(
                                  text: services[index]['title'],
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ]),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 30,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                divder(),
                Container(
                  padding: EdgeInsets.all(35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Search all services',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(height: 28),
                      TextFormField(
                        decoration: nameDecoration(),
                      ),
                    ],
                  ),
                ),
                divder(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/scs.png'),
                Image.asset('images/logoFacebook.png'),
                Image.asset('images/logoLinkedin.png'),
              ],
            ),
          ),
        ],
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     divder(),
      //     Expanded(child: null),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         divder(),
      //         Container(
      //           padding: EdgeInsets.all(35),
      //           child: Column(
      //             children: [
      //               SizedBox(height: 40),
      //               TextWidget(
      //                 text: 'Services',
      //                 style: Theme.of(context).textTheme.headline4,
      //               ),
      //               SizedBox(height: 28),
      //               Container(
      //                 height: 85,
      //                 child: ListView.separated(
      //                   scrollDirection: Axis.horizontal,
      //                   itemCount: services.length,
      //                   itemBuilder: (context, index) {
      //                     return Container(
      //                       child: Column(children: [
      //                         Image.asset(
      //                           services[index]['image'],
      //                           height: 54,
      //                         ),
      //                         SizedBox(height: 12),
      //                         TextWidget(
      //                           text: services[index]['title'],
      //                           style: Theme.of(context).textTheme.headline6,
      //                         ),
      //                       ]),
      //                     );
      //                   },
      //                   separatorBuilder: (context, index) {
      //                     return SizedBox(
      //                       width: 30,
      //                     );
      //                   },
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         divder(),
      //         Container(
      //           padding: EdgeInsets.all(35),
      //           child: Column(
      //             children: [
      //               TextWidget(
      //                 text: 'Search all services',
      //                 style: Theme.of(context).textTheme.headline4,
      //               ),
      //               SizedBox(height: 28),
      //               TextFormField(
      //                 decoration: nameDecoration(),
      //               ),
      //             ],
      //           ),
      //         ),
      //         divder(),
      //         Container(
      //           padding: EdgeInsets.all(35),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Image.asset('images/scs.png'),
      //               Image.asset('images/logoFacebook.png'),
      //               Image.asset('images/logoLinkedin.png'),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      // ),
    );
  }

  divder() {
    return Divider(
      color: colorGreyLight,
      height: 1,
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );
  }

  nameDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.search),
      suffix: Icon(Icons.done),
      labelText: 'eg. “Patent Filing”',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorGreyLight,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorGreyLight,
        ),
      ),
    );
  }
}
