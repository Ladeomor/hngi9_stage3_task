import 'package:country_app/data/constants/text.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LogoText(text: 'Explore'),
        buildCircle(),
        Spacer(),
        buildCircleContainer(
          Icon(Icons.wb_sunny_outlined)
        ),



      ]
    );
  }
  Widget buildCircle(){
    return Container(
      width: 20,
        height: 20,
        decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle
        ),
    );
  }
  Widget buildCircleContainer(Widget child){
    return Container(
      height: 30,
      width: 30,
      color: Color(0xFFFCFCFD),
      child: child,
    );
  }
}



