import 'package:flutter/cupertino.dart';
class DiscountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,width: 350,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 100,left: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/top-view-roasted-coffee-beans-scattered-brown-paper-texture-background'
              '-with-copy-space_141793-7136.jpg?size=626&ext=jpg'),fit: BoxFit.fill)),
      child: Text('Get 20% discount \nfor your first order\ntoday!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    );
  }
}
