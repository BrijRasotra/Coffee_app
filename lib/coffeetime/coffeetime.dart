import 'package:coffeeapp/coffeetime/component/discountpage.dart';
import 'package:coffeeapp/coffeetime/component/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/coffeespage.dart';

class CoffeeTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff164539),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Good Morning!',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white38,
                ),
              )),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Adom Shafi',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Spacer(),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
                child: Hero(tag: 'https://planw.in/wp-content/uploads/2021/02/avatar-4.png',
                  child: Image.network(
                    'https://planw.in/wp-content/uploads/2021/02/avatar-4.png',
                    height: 70,
                  ),
                ),
              ),
            ],
          ),
          DiscountPage(),
          CoffeePage(),
        ],
      ),
    );
  }
}
