import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/services/chat_web_service.dart';
import 'package:chatbot/theme/colors.dart';
import 'package:chatbot/widgets/search_section.dart';
import 'package:chatbot/widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            kIsWeb ? SideBar() : SizedBox(),
            Expanded(
              child: Padding(
                padding: !kIsWeb ? const EdgeInsets.all(8.0) : EdgeInsets.zero,
                child: Column(
                  children: [
                    Expanded(
                      child: SearchSection(),
                    ),
                    // footer
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "This",
                              style: TextStyle(
                                fontSize: 14,
                                color: ac.footerGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Is",
                              style: TextStyle(
                                fontSize: 14,
                                color: ac.footerGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Devlop",
                              style: TextStyle(
                                fontSize: 14,
                                color: ac.footerGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "By",
                              style: TextStyle(
                                fontSize: 14,
                                color: ac.footerGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Mohit",
                              style: TextStyle(
                                fontSize: 14,
                                color: ac.footerGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Rana",
                              style: TextStyle(
                                fontSize: 14,
                                color: ac.footerGrey,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}