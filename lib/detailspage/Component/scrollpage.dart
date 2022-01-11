import 'package:coffeeapp/provider/coffeeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class ScrollPage extends StatelessWidget {
  late CoffeeProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = context.read<CoffeeProvider>();
    return Scaffold(
      backgroundColor: Color(0xFF143c2e),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            Container(
                height: 250,
                margin: EdgeInsets.all(40),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Image.network(
                  'https://cdn3.iconfinder.com/data/icons/coffee-shop-71/512/coffee-bean-coffee-grain-'
                  'coffee-beans-coffee_bag-beans-coffee-bag-food-512.png',
                  scale: 3,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Toppings',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Milk',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Sugar',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFa2b5b5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            _provider.decrement();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                      Consumer<CoffeeProvider>(
                        builder: (context, val, child) => Text(
                          val.count.toString(),
                          style: TextStyle(color: Colors.white54, fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _provider.increment();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF91c5c8)),
                  child: Text(
                    'Farm',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Cinnamon',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFa2b5b5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            _provider.decrement();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                      Consumer<CoffeeProvider>(
                        builder: (context, val, child) => Text(
                          val.count.toString(),
                          style: TextStyle(color: Colors.white54, fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _provider.increment();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF91c5c8)),
                  child: Text(
                    'Almond',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Cocoa',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFa2b5b5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            _provider.decrement();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                      Consumer<CoffeeProvider>(
                        builder: (context, val, child) => Text(
                          val.count.toString(),
                          style: TextStyle(color: Colors.white54, fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _provider.increment();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF91c5c8)),
                  child: Text(
                    'Coconut',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Ice',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFa2b5b5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            _provider.decrement();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                      Consumer<CoffeeProvider>(
                        builder: (context, val, child) => Text(
                          val.count.toString(),
                          style: TextStyle(color: Colors.white54, fontSize: 25),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _provider.increment();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF91c5c8)),
                  child: Text(
                    'Gluten-free',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
