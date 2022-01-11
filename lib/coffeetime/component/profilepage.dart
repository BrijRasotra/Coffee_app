import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  var iconData = [
    Icons.eleven_mp,
    Icons.access_time_outlined,
    Icons.help_outline,
    Icons.settings,
    Icons.person_add_alt_1_outlined,
    Icons.logout_sharp
  ];
  var txt = [
    'Privacy',
    'Purchase History',
    'Help & Support',
    'Setting',
    'Invite a Friend',
    'Logout'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                child: Container(padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              Container(padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.nights_stay_outlined,
                ),
              ),
            ],
          ),
          Container(
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Hero(tag:'https://planw.in/wp-content/uploads/2021/02/avatar-4.png',
                    child: Image.network(
                      'https://planw.in/wp-content/uploads/2021/02/avatar-4.png',
                      height: 140,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.all(20),
            height: 40,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
            ),
            child: Text(
              'Upgrade to PRO',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Container(
              height: 520,
              child: ListView.builder(
                  itemCount: iconData.length,
                  itemBuilder: (context, index) => Container(
                        width: 300,
                        height: 60,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 20, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFebebeb)),
                        child: Row(
                          children: [
                            Icon(
                              iconData[index],
                              size: 40,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              txt[index],
                              style: TextStyle(fontSize: 20),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ))),
        ],
      ),
    );
  }
}
