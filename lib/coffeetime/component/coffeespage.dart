import 'package:coffeeapp/detailspage/Component/scrollpage.dart';
import 'package:coffeeapp/detailspage/detailpage.dart';
import 'package:coffeeapp/swiper/swipepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeePage extends StatefulWidget {
  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  List img = [
    'https://www.pngkey.com/png/full/56-561481_paper-coffee-cup-png-coffee.png',
    'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c549.png',
    'https://i.pinimg.com/originals/e7/03/18/e70318f050a5099bc04e1bedb75a77d4.png',
    'https://i.pinimg.com/originals/3c/8a/64/3c8a64e35f2a8ed130cbfdfb63d24d27.png',
    'https://i.pinimg.com/originals/67/9b/85/679b859725bb3bee6d443de6bc772d60.png',
    'https://secure.webtoolhub.com/static/resources/icons/set35/8ca023cd.png'];
  List name = [
    'CAFE LATTE',
    'IRISH COFFEE',
    'CAPPUCCINO',
    'ICED COFFEE',
    'CORTADO',
    'GINTON'];
List fees=['\$15','\$20','\$17','\$22','\$15','\$15'];
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Container(padding:EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Time for a coffee',style:
              TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.search,size: 30,),
            ],
          ),
          Container(
            height: 387,
            child: GridView.builder(
                itemCount: img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        PageView(
                          controller: _controller,
                          scrollDirection: Axis.vertical,
                          children: [
                            DetailPage(img[index],name[index],fees[index]),
                            ScrPage(fees[index]),
                          ],
                        )));
                  },
                  child: Container(
                        padding: EdgeInsets.all(20),
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFf5f4ef)),
                        child: Column(
                          children: [
                            Hero(tag: img[index],
                              child: Image.network(
                                img[index],
                                height: 100,
                              ),
                            ),
                            Text(
                              name[index],
                              style:
                                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              fees[index],
                              style:
                                  TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                )),
          ),
        ],
      ),
    );
  }
}
