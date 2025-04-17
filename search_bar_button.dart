import 'package:flutter/material.dart';
import 'package:chatbot/theme/colors.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchBarButton({super.key, required this.icon,required this.text});

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool ih = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        setState(() {
          ih = true;
        });
      },
      onExit: (event){
        setState(() {
          ih = false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ih ? ac.proButton: Colors.transparent
        ),
        child: Row(
          children: [
            Icon(widget.icon,color: ac.iconGrey,size: 20,),
            const SizedBox(width: 8,),
            Text(widget.text,style: TextStyle(color: ac.textGrey,),)
          ],
        ),
      ),
    );
  }
}
