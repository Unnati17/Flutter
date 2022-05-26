import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  _getContainer(Color color, {double width = 500, double height = 500}) {
    return Container(color: color, width: width, height: height);
  }

  _getText(String txt, {double fontSize = 18}) {
    return Text(
      txt,
      style: TextStyle(fontSize: fontSize),
    );
  }

  _getImages(String url, {int flex: 1}) {
    return Expanded(child: Image.network(url), flex: flex);
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          //textBaseline: TextBaseline.alphabetic,
          //mainAxisSize: MainAxisSize.min, //Pack the content
          children: [
            _getImages(
                'https://media.istockphoto.com/photos/red-generic-sedan-car-isolated-on-white-background-3d-illustration-picture-id1189903200?k=20&m=1189903200&s=612x612&w=0&h=L2bus_XVwK5_yXI08X6RaprdFKF1U9YjpN_pVYPgS0o=',
                flex: 2),
            _getImages(
                'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg'),
            _getImages(
                'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80',
                flex: 3)
            // _getText('Hi'),
            // _getText('Hello', fontSize: 30),
            // _getText('Hola')
            // _getContainer(Colors.red),
            // _getContainer(Colors.green, width: 100, height: 100),
            // _getContainer(Colors.blue)
          ],
        ),
      ),
    );
  }
}
