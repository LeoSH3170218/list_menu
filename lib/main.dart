import 'package:flutter/material.dart';
import 'package:list_menu/icons/custom_icon.dart';
import 'package:list_menu/model/menu_list_model.dart';
import 'package:list_menu/widget/menu_list.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MenuListModel> menuList = [
    MenuListModel(text: "Profile Management", icon: MyFlutterApp.user_settings, callBack: (){}),
    MenuListModel(text: "Transfers", icon: MyFlutterApp.exchange, callBack: (){}),
    MenuListModel(text: "Abouts", icon: Icons.info, callBack: (){})
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromRGBO(36, 62, 110, 0.85),
      ),
      body: Center(
        child: Column(
          children: [
            ListView.builder(
              itemCount: menuList.length,
              padding: EdgeInsets.only(top: 16),
              shrinkWrap: true,
              itemBuilder: (context, index){
                return MenuList(
                  text: menuList[index].text,
                  icon: menuList[index].icon,
                  callBack: menuList[index].callBack,

                );
              },
            ),
          ],
        ),
      ),

    );
  }
}
