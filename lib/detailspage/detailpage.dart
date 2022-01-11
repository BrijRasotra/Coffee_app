import 'package:coffeeapp/detailspage/Component/ListPage.dart';
import 'package:coffeeapp/detailspage/Component/swipepage.dart';
import 'package:coffeeapp/provider/coffeeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  late CoffeeProvider _provider;
  String img, name, fees;

  DetailPage(this.img, this.name, this.fees);

  @override
  Widget build(BuildContext context) {
    _provider = context.read<CoffeeProvider>();
    return Scaffold(
      backgroundColor: Color(0xFF143c2e),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Details',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              fees,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListPage(),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 300,
                  width: 250,
                  child: Hero(
                    tag: img,
                    child: Image.network(
                      img,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4)),
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
            SwipePage(),
            SizedBox(
              height: 80,
            ),
            Text(
              'Swipe for more details',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Icon(
              Icons.expand_less,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
