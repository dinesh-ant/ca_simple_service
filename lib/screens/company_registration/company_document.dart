import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/widgets/concave_header.dart';
import 'package:ca_simple_service/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyDocumentScreen extends StatefulWidget {
  @override
  _CompanyDocumentScreenState createState() => _CompanyDocumentScreenState();
}

class _CompanyDocumentScreenState extends State<CompanyDocumentScreen> {
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
          'Company Registration',
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
                        text: 'Required Documents',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: colorGreyLight),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: RotationTransition(
                              turns: AlwaysStoppedAnimation(45 / 360),
                              child: Image.asset(
                                'images/touch.png',
                                width: 32,
                                height: 32,
                              ),
                            ),
                            title: Text(
                              'Aadhar Information',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            trailing: Icon(Icons.done),
                          ),
                          ButtonBar(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              OutlineButton(
                                child: Row(children: [
                                  Icon(Icons.file_upload),
                                  Text('Upload')
                                ]),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                onPressed: null,
                              ),
                              OutlineButton(
                                child: Row(children: [
                                  Icon(Icons.folder_open),
                                  Text('Select from My Doc')
                                ]),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                onPressed: null,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: colorGreyLight),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: RotationTransition(
                              turns: AlwaysStoppedAnimation(45 / 360),
                              child: Image.asset(
                                'images/touch.png',
                                width: 32,
                                height: 32,
                              ),
                            ),
                            title: Text(
                              'Pancard',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            trailing: Icon(Icons.done),
                          ),
                          ButtonBar(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              OutlineButton(
                                child: Row(children: [
                                  Icon(Icons.file_upload),
                                  Text('Upload')
                                ]),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                onPressed: null,
                              ),
                              OutlineButton(
                                child: Row(children: [
                                  Icon(Icons.folder_open),
                                  Text('Select from My Doc')
                                ]),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                onPressed: null,
                              ),
                            ],
                          ),
                        ],
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
