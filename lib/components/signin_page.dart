import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(SignInPage());
}

class SignInPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/BGapp.jpg"), fit: BoxFit.cover),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
              //Enter E-mail
              new Container(
                color: Colors.white.withOpacity(0.7),
                width: 300,
                height: 180,
                child: Column(children: <Widget>[
                  //Enter E-mail
                  new Container(
                    alignment: Alignment.topLeft,
                    margin: new EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: [
                          new Text(
                            'E-mail',
                            style: TextStyle(
                              color: Color(0xFF5B8A72),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          new TextFormField(
                            decoration: InputDecoration(
                              fillColor: Color(0xFF5B8A72).withOpacity(0.5),
                              filled: true,
                              border: InputBorder.none,
                            ),
                          ),
                          //Enter pass word
                        ]),
                  ),
                  new Container(
                    alignment: Alignment.topLeft,
                    margin: new EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: [
                          new Text(
                            'Password',
                            style: TextStyle(
                              color: Color(0xFF5B8A72),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          new TextFormField(
                            decoration: InputDecoration(
                              fillColor: Color(0xFF5B8A72).withOpacity(0.5),
                              filled: true,
                              border: InputBorder.none,
                            ),
                          ),
                        ]),
                  ),
                ]),
              ),
              //Button
              new Container(
                  height: 50.0,
                  width: 150,
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  child: new RaisedButton(
                    child: new Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffBFCBA8),
                          fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    color: Color(0xff56776c),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: () => {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstAppPage()))
                    },
                  )),

              new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Do you have an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                new InkWell(
                  child: new Text(
                    "Sign up.",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () => {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => FirstAppPage()))
                  },
                )
              ]),
            ])));
  }
}
