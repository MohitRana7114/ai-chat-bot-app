import 'package:chatbot/theme/colors.dart';
import 'package:chatbot/widgets/side_bar_button.dart';
import 'package:flutter/material.dart';


class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 100),
      width: isCollapsed ? 64 : 128,
      color: ac.sideNav,
      child: Column(
        crossAxisAlignment: isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Icon(Icons.auto_awesome_mosaic,color: Colors.white,size: isCollapsed ? 30 : 60 ,

          ),
          const SizedBox(height: 18),
          SideBarButton(isCollapsed: isCollapsed, icon: Icons.add, text: "home"),
          SideBarButton(isCollapsed: isCollapsed, icon: Icons.search, text: "Search"),
          SideBarButton(isCollapsed: isCollapsed, icon: Icons.language, text: "space"),
          SideBarButton(isCollapsed: isCollapsed, icon: Icons.auto_awesome, text: "Discover"),
          SideBarButton(isCollapsed: isCollapsed, icon: Icons.cloud_outlined, text: "Library"),

           const Spacer(),
          GestureDetector(
            onTap: (){
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(microseconds: 100),
              margin: EdgeInsets.symmetric(vertical: 14),
              child: Icon(
                isCollapsed ?   Icons.keyboard_arrow_right : Icons.keyboard_arrow_left,color: Colors.white,size: 20,),

            ),
          ),

          const SizedBox(height: 16),



        ],
      ),
    );
  }
}
