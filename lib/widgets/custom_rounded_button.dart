import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final Function press;
  final String text;

  const CustomRoundedButton({Key key, this.press, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          color: Colors.orange[400],
          onPressed: this.press,
          child: Text(
            this.text,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
