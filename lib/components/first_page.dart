import 'package:flutter/material.dart';
import 'signin_page.dart';

class FirstAppPage extends StatelessWidget {
  const FirstAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new RaisedButton(
      child: new Text("Sign in"),
      textColor: Colors.white,
      color: Color(0xff56776c),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20.0)),
      onPressed: () => {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInPage()))
      },
    ));
  }
}
