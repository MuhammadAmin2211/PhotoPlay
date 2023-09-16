import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photoPlay/routes/route_file.dart';


import 'const/const.dart';
import '/blocs/login/login_bloc.dart';
import 'presentation/login_view.dart';
import 'routes/routes_name.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Play',
      theme: appThemeData(),
      initialRoute: Routes.initial,
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
    );
  }
}
