import 'package:ca_simple_service/screens/company_registration/company_category.dart';
import 'package:ca_simple_service/screens/company_registration/company_details/company_details.dart';
import 'package:ca_simple_service/screens/company_registration/company_document.dart';
import 'package:ca_simple_service/screens/company_registration/company_type.dart';
import 'package:ca_simple_service/screens/home/home.dart';
import 'package:ca_simple_service/screens/login/login.dart';
import 'package:ca_simple_service/screens/onboard/onboard.dart';
import 'package:ca_simple_service/screens/reset_password/reset_password.dart';
import 'package:ca_simple_service/screens/signup/signup.dart';
import 'package:ca_simple_service/screens/success_message/success_message.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/home': (context) => HomeScreen(),
  '/login': (context) => LoginScreen(),
  '/signup': (context) => SignupScreen(),
  '/onboard': (context) => OnboardScreen(),
  '/reset_password': (context) => ResetPasswordScreen(),
  '/success_message': (context) => SuccessMessageScreen(),
  '/company_category': (context) => CompanyCategoryScreen(),
  '/company_type': (context) => CompanyTypeScreen(),
  '/company_details': (context) => CompanyDetailsScreen(),
  '/company_documents': (context) => CompanyDocumentScreen(),
};
