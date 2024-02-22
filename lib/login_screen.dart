import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil initialization
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: ScreenUtil().setHeight(40)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                child: Text('Login'),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              TextButton(
                onPressed: () {
                  // Add navigation to registration screen here
                },
                child: Text('Create an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
