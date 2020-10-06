import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:k_wallet/create_acc.dart';
import 'package:k_wallet/home_screen.dart';
import 'package:k_wallet/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: ("Money Management application"),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
                heightFactor: 10,
                alignment: Alignment.centerLeft,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("images/bg_image.png"),
                        Image.asset("images/bg_image.png"),
                        Image.asset("images/bg_hmoney.jpeg"),
                        Image.asset("images/bg_image.png"),
                        Image.asset("images/bg_image.png")
                      ],
                    ),
                  ],
                )),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _topcontent(),
                    _centreContent(),
                    _bottomContent(context)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

Widget _topcontent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 18,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "06.20 PM",
            style: TextStyle(
//                fontSize: 24,
                color: Colors.blue,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 20,
            width: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage("images/cloud.png"), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "32 C",
            style: TextStyle(
//                fontSize: 24,
                color: Colors.blue,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
      Row(
        children: [
          Text(
            "Sept 2 2020|Wenesday",
            style: TextStyle(
              color: Colors.blue[200],
              fontFamily: 'Pacifico',
            ),
          )
        ],
      )
    ],
  );
}

Widget _centreContent() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(
                    "images/recieve_money.jpeg",
                  ),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 10),
        Text(
          "k-Wallet",
          style: TextStyle(
              color: Colors.blue.withGreen(200),
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        Text(
          "K-Wallet is a solution to your Money management problems,"
          "Sign In and enjoy financial accountability"
          "This is great deal for great brains",
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        )
      ],
    ),
  );
}

Widget _bottomContent(context) {
  return Column(
    children: [
      MaterialButton(
        elevation: 10.0,
        color: Colors.green[200],
        height: 50,
        minWidth: 200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Log In",
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
      ),
      SizedBox(
        height: 15,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder:
              (context) => CreateAccount()));
        },
        child: Text(
          "Create an account",
          style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.w500,
              fontFamily: 'Pacifico'),
        ),
      )
    ],
  );
}
