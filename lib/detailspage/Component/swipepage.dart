import 'package:coffeeapp/coffeetime/component/Mappage.dart';
import 'package:coffeeapp/provider/coffeeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class SwipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/194/194931.png',
                  height: 30,
                ),
                Positioned(
                    left: 15,
                    top: -4,
                    child: Image.network(
                      'https://res.cloudinary.com/wfdns6x2g6/image/upload/v1509007989/user_psolwi.png',
                      height: 35,
                    )),
                Positioned(
                    left: 35,
                    top: -2,
                    child: Image.network(
                      'https://cswnn.edu.in/system/files/2021-02/avatar-png-1-original.png',
                      height: 35,
                    )),
              ],
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              '155+ review',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage()));
              },
              child: Container(height: 50,width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)), color: Colors.white),
              child: Text('Add to Cart',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            )
          ],
        ),
        
      ],
    );
  }
}
