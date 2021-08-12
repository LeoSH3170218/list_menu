import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  String text;
  IconData icon;
  VoidCallback callBack;

  MenuList({
    required this.text,
    required this.icon,
    required this.callBack
});

  @override
  _MenuListState createState() => _MenuListState(this.text, this.icon, this.callBack);
}

class _MenuListState extends State<MenuList> {
  late String text;
  late IconData icon;
  late VoidCallback callBack;

  _MenuListState(String text, IconData icon, VoidCallback callBack){
    this.text = text;
    this.icon = icon;
    this.callBack = callBack;
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      callback: callBack,
      text: text,
      icon: icon,
      color: Color.fromRGBO(220, 224, 234, 1),

    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final Color color;
  final IconData icon;
  //final double width;

  const CustomButton({required this.callback, required this.text,
    required this.color, required this.icon});

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
                  icon,
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
