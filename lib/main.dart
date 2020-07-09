import 'package:ca_simple_service/constants/theme.dart';
import 'package:ca_simple_service/locator.dart';
import 'package:ca_simple_service/providers/supply_providers.dart';
import 'package:ca_simple_service/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getProviders,
      child: MaterialApp(
        theme: buildAppTheme(),
        initialRoute: '/',
        routes: appRoutes,
      ),
    );
  }
}