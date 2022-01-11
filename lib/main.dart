import 'package:coffeeapp/coffeetime/component/Mappage.dart';
import 'package:coffeeapp/provider/coffeeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'coffeetime/coffeetime.dart';
import 'coffeetime/component/profilepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>CoffeeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: CoffeeTime()
      ),
    );
  }
}
