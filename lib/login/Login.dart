import 'package:developer_messenger/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import 'login_body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginBody(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DashBoard()));
          },
        ));
  }
}
