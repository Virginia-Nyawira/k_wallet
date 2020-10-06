import 'package:flutter/material.dart';
import 'package:k_wallet/login_page.dart';
class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount>with
    SingleTickerProviderStateMixin {
  Animation animation, childAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this);

    animation = Tween(begin: -0.25, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    childAnimation = Tween(begin: 20.0, end: 125.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            body: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(25.0),
                child: Transform(
                  transform: Matrix4.translationValues(
                      animation.value * width, 0.0, 0.0),
                  child: Center(
                    child: AnimatedBuilder(
                        animation: childAnimation,
                        builder: (BuildContext context, Widget child) {
                          return Center(
                            child: Container(
                              height: childAnimation.value * 4,
                              width: childAnimation.value * 3,
                              padding: EdgeInsets.all(15.0),
                              child: ListView(
                                children: [
                                  Text("Create Account",style: TextStyle(
                                    fontFamily: "Pacifico",
                                    color: Colors.green[200]
                                  ),),
                                  TextField(
                                    decoration: InputDecoration(
                                        labelText: ('UserName'),
                                        labelStyle: TextStyle(
                                            fontFamily: "Pacifico",
                                          color: Colors.purple
                                        ),
                                        icon: Icon(
                                          Icons.person_pin,
                                          color: Colors.blue,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: ('E-mail'),
                                      labelStyle: TextStyle(
                                          fontFamily: "Pacifico",
                                          color: Colors.purple
                                      ),
                                      icon: Icon(
                                        Icons.mail_outline,
                                        color: Colors.blue,
                                      ),
                                      fillColor: Colors.yellow[500],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        labelText: ('Password'),
                                        labelStyle: TextStyle(
                                            fontFamily: "Pacifico",
                                            color: Colors.purple
                                        ),
                                        icon: Icon(
                                          Icons.lock,
                                          color: Colors.blue,
                                        )),
                                    maxLength: 5,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        labelText: ('Confirm Password'),
                                        labelStyle: TextStyle(
                                            fontFamily: "Pacifico",
                                            color: Colors.purple
                                        ),
                                        icon: Icon(
                                          Icons.lock,
                                          color: Colors.blue,
                                        )),
                                    maxLength: 5,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder:
                                              (context)=>LoginPage()));
                                    },
                                    elevation: 10.0,
//                                     color: Colors.greenAccent,
                                    child: Text("Done",
                                        style: TextStyle(
                                            color: Colors.blue[500],
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Pacifico",
                                            fontSize: 18.0)),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
