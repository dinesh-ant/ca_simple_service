import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/concave_header.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyTypeScreen extends StatefulWidget {
  @override
  _CompanyTypeScreenState createState() => _CompanyTypeScreenState();
}

class _CompanyTypeScreenState extends State<CompanyTypeScreen> {
  List<String> category = [
    'Public Limited Company',
    'Private Limited Company',
    'One Person Company',
    'Partnership'
  ];
  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Company Formation',
          style: TextStyle(color: colorTextDark),
        ),
        backgroundColor: colorYellowLight,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            ConcaveHeaderWidget(),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextWidget(
                        text: 'Select Type',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: RotationTransition(
                              turns: AlwaysStoppedAnimation(45 / 360),
                              child: Image.asset(
                                'images/touch.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            title: Text(
                              '${category[index]}',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            subtitle: Text(
                              'View more info',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            trailing: Icon(Icons.arrow_forward),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            height: 1,
                            color: colorGreyLight,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
