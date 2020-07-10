import 'package:ca_simple_service/constants/constant.dart';
import 'package:ca_simple_service/screens/company_registration/company_details/definition_tab.dart';
import 'package:ca_simple_service/widgets/concave_header.dart';
import 'package:flutter/material.dart';

class CompanyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Company Details',
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
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    bottom: PreferredSize(
                      preferredSize: new Size.fromHeight(0),
                      child: TabBar(
                        indicatorColor: colorBlue,
                        labelColor: colorBlue,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: 'Definition'),
                          Tab(text: 'Benifit'),
                          Tab(text: 'Documents'),
                        ],
                      ),
                    ),
                    // title: Text('Tabs Demo'),
                  ),
                  body: TabBarView(
                    children: [
                      DefinitionTab(),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
