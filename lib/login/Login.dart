import 'package:developer_messenger/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import 'Body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Body(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DashBoard()));
          },
        ));
  }
}
