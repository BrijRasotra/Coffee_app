import 'package:coffeeapp/provider/coffeeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
class ScrPage extends StatefulWidget {
  String fees;
  ScrPage(this.fees);

  @override
  State<ScrPage> createState() => _ScrPageState();
}

class _ScrPageState extends State<ScrPage> {
  List name=['Sugar','Cinnamon','Cocoa','Ice'];

  List milk=[ 'Farm','Almond','Coconut','Gluten-free'];

  late CoffeeProvider _provider;

  int isSelect=0;

  @override
  Widget build(BuildContext context) {
    _provider = context.read<CoffeeProvider>();
    return Scaffold(
      backgroundColor: Color(0xFF143c2e),
      body: SafeArea(
        child: Column(
          children: [
          Container(
              height: 200,
              margin: EdgeInsets.all(40),
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Image.network(
                'https://cdn3.iconfinder.com/data/icons/coffee-shop-71/512/coffee-bean-coffee-grain-'
                    'coffee-beans-coffee_bag-beans-coffee-bag-food-512.png',
                scale: 3,
              )),
            Divider(color: Colors.white,thickness: 4,),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add,size: 40,color: Colors.white38,),
                Text(widget.fees,style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                Icon(Icons.remove,size: 40,color: Colors.white38,),
              ],
            ),
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Toppings',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
            SizedBox(height: 40,),
            Container(height: 290,
              child:
              ListView.builder(itemCount: name.length,
                itemBuilder: (context,index)=>
                    Container(margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name[index],
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
                          GestureDetector(onTap: ()
                          {
                            setState(() {
                              isSelect=index;
                            });
                          },
                            child: Container(
                              height: 40,
                              width: 120,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: (isSelect==index)?Color(0xFFfbba7c):Color(0xFF91c5c8)),
                              child: Text(
                                milk[index],
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),)
        ],),
      ),
    );
  }
}
