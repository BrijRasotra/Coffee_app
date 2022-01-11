import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List size = ['S', 'M', 'L'];

  var isSelect=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 70,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            setState(() {
              isSelect=index;
            });
          },
          child: Container(
            width: 100,
            height: 60,
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: (isSelect==index)?Colors.red:Colors.transparent,
                border: Border.all(color: Colors.white, width: 3)),
            child: Text(
              size[index],
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
        itemCount: size.length,
      ),
    );
  }
}
