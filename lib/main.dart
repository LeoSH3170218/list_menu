import 'package:flutter/material.dart';
import 'package:list_menu/icons/custom_icons.dart';
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
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MenuList> menuList = [
    MenuList(text: "Profile Management", icon: Icons.settings, callBack: (){}),
    MenuList(text: "Transfers", icon: Icons.transfer_within_a_station, callBack: (){}),
    MenuList(text: "Abouts", icon: Icons.info, callBack: (){})
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

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final Color color;
  final IconData icon;
  final double width;

  const CustomButton({Key key, this.callback, this.text,
      this.color, this.icon, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: width,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Material(
        color: color,
        elevation: 6.0,
        borderRadius: BorderRadius.circular(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              width: 1,
              child: Icon(
                Icons.info,
                color: Color.fromRGBO(36, 62, 110, 0.85),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            MaterialButton(
              onPressed: callback,
              minWidth: 100.0,
              height: 45,
              child: Text(
                text,
                style: TextStyle(
                    color: Color.fromRGBO(36, 62, 110, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
