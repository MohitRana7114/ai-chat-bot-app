import 'package:flutter/material.dart';
import 'package:chatbot/theme/colors.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const SideBarButton({
    super.key,
    required this.isCollapsed,
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isCollapsed ?  MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 14,horizontal: 10),
            child: Icon(icon,color: ac.iconGrey,size: 20,)),
        isCollapsed ? const SizedBox() :
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    );
  }

}
