import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.only(left: 18, right: 18, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("images/recieve_money.jpeg"))),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "My-Pesa Overview",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Monoton",
                    color: Colors.green[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            _headerContent(),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              color: Colors.white30,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Send  Money",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: "Pacifico",
                      color: Colors.green.withBlue(400),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage("images/send.png"))),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            _centreContent(),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              color: Colors.white54,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: "Pacifico",
                      color: Colors.green.withBlue(400),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/menu.png"))),
                    child: GestureDetector(
                      onTap: (){
                        print("Services Clicked");
                      },
                    ),
                  )
                ],
              ),
            ),
            _serviceContents(context)
          ],
        ),
      ),
    );
  }
}

Widget _headerContent() {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.pink[200]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Bal:",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Text(
          "Ksh 13,400.00",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black54,
          ),
        ),
        //Adding Money to your account
        RaisedButton(
          onPressed: () {
            print("View a/c bal");
          },
          elevation: 5.0,
          padding: EdgeInsets.all(10),
          child: Text(
            "View",
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.w500,
            fontFamily: "Pacifico",
              fontSize: 11
            ),
          ),
          shape: CircleBorder(),
          color: Colors.blueGrey [400],
        )
      ],
    ),
  );
}

Widget _centreContent() {
  return Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 80,
          padding: EdgeInsets.all(18),
          child: RaisedButton(
            onPressed: () {
              print("Add button Clicked");
            },
            elevation: 10.0,
            shape: CircleBorder(),
            color: Colors.blueGrey[300],
            child: Text(
              "+",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //******************Contacts******************
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/profile12.png")),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue[500])),
              ),
              Text(
                "Ken",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/profile4.jpg")),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue[500])),
              ),
              Text(
                "Liz",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/profile3.jpg")),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue[500])),
              ),
              Text(
                "Dan",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/profile15.jpg")),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue[500])),
              ),
              Text(
                "Beth",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //height:60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange)),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    size: 22.0,
                  ),
                ),
              ),
              Text(
                "Lyn",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(15),
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //height:60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange)),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    size: 22.0,
                  ),
                ),
              ),
              Text(
                "Bill",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _serviceContents(context) {
  List<ServiceImages> serviceList = new List();

  serviceList.add(ServiceImages("Send\nMoney", "images/send_money.png"));
  serviceList.add(ServiceImages("Recieved\nMoney", "images/recieve.jpeg"));
  serviceList.add(ServiceImages("Mobile\nPrepaid", "images/mobile_phone.png"));
  serviceList
      .add(ServiceImages("Electricity\nBill", "images/electricity_bill.png"));
  serviceList.add(ServiceImages("Movies\nTicket", "images/movie.png"));
  serviceList.add(ServiceImages("Flight\nTicket", "images/flight.png"));
  serviceList.add(ServiceImages("More\nOptions", "images/more.png"));
  return Container(
    width: double.infinity,
    height: 200,
    child: GridView.count(
      crossAxisCount: 3,
      childAspectRatio: MediaQuery.of(context).size.width/
          (MediaQuery.of(context).size.height/1.5),
      children: serviceList.map((value) {
        return GestureDetector(
          onTap: (){
            print("Image clicked");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10)
                ),
                //Image to be displayed
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset("${value.image}"),
                ),
              ),
              SizedBox(height: 5,),
              Text("${value.tittle}",
                textAlign: TextAlign.center,
              )
            ],
          ),
        );
      }).toList(),
    ),
  );
}

class ServiceImages {
  String tittle, image;

  ServiceImages(this.tittle, this.image);
}
