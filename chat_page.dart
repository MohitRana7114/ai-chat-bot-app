import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/theme/colors.dart';
import 'package:chatbot/widgets/answer_secation.dart';
import 'package:chatbot/widgets/side_bar.dart';
import 'package:chatbot/widgets/sources_secation.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb ? SideBar() : SizedBox(),
          kIsWeb ? const SizedBox(width: 100) : SizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      question,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),
                    SourcesSection(),
                    SizedBox(height: 24),
                    AnswerSection(),
                  ],
                ),
              ),
            ),
          ),
          kIsWeb
              ? Placeholder(
            strokeWidth: 0,
            color: ac.background,
          )
              : SizedBox(),
        ],
      ),
    );
  }
}
