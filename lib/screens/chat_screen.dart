import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
 bool infoVisible = false;
  bool categoryVisibile = false;

  checkDevice(double width) {
    if(width <= 576) {
      return "mobile";
    }
    else if(width <= 768) {
      return "tablet";
    }
    else if(width <= 1024) {
      return "desktop";
    }
    else  {
      return "large";
    }
  }
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var deviceType = checkDevice(scrWidth);
    Widget buildMainArea() {
      if(deviceType == 'mobile') {
        return ChatsScreen();
      }
      else if(deviceType == 'tablet') {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: ChatsScreen(),
                  ),
                  Expanded(
                    flex: 7,
                    child: ConversationsScreen(),
                  ),
                ]
              ),
            ),
            categoryVisibile || infoVisible ? Positioned(
              top:0,
              left:0,
              bottom:0,
              right:0,
              child: Container(
                color: Color.fromARGB(55, 0, 0, 0),
              )
            ) : Positioned(top:0, left: 0, width: 0, height: 0, child: SizedBox()),
            categoryVisibile ? Positioned(
              left:0,
              top: 0,
              bottom: 0,
              width: 275,
              child: AnimatedSize(
                duration: Duration(milliseconds: 800),
                child: CategoriesScreen()),
            ) : Positioned(top:0, left: 0, width: 0, height: 0, child: SizedBox()),
            infoVisible ? Positioned(
              right:0,
              top: 0,
              bottom: 0,
              width: 275,
              child: ChatInfoScreen(),
            ) : Positioned(top:0, left: 0, width: 0, height: 0, child: SizedBox()),
          ],
        );
      }
      else if(deviceType == 'desktop') {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left:0,
              right:0,
              bottom: 0,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CategoriesScreen(),
                  ),
                  Expanded(
                    flex: 4,
                    child: ChatsScreen(),
                  ),
                  Expanded(
                    flex: 5,
                    child: ConversationsScreen(),
                  ),
                ]
              ),
            ),
            categoryVisibile || infoVisible ? Positioned(
              top:0,
              left:0,
              bottom:0,
              right:0,
              child: Container(
                color: Color.fromARGB(55, 0, 0, 0),
              )
            ) : Positioned(top:0, left: 0, width: 0, height: 0, child: SizedBox()),
            infoVisible ? Positioned(
              right:0,
              top: 0,
              bottom: 0,
              width: 275,
              child: ChatInfoScreen(),
            ) : Positioned(top:0, left: 0, width: 0, height: 0, child: SizedBox()),
          ],
        );
      }
      else {
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: CategoriesScreen(),
            ),
            Expanded(
              flex: 3,
              child: ChatsScreen(),
            ),
            Expanded(
              flex: 4,
              child: ConversationsScreen(),
            ),
            Expanded(
              flex: 3,
              child: ChatInfoScreen(),
            ),
          ]
        );
      }
    }
    Scaffold(
      body: Column(
        children: [
          AppHeader(
            onCategoryClicked: () {
              if(categoryVisibile) {
                setState(() {
                  categoryVisibile = false;
                  infoVisible = false;
                });
              }
              else {
                setState(() {
                  categoryVisibile = true;
                  infoVisible = false;
                });
              }
            },
            onInfoClicked: () {
              if(infoVisible) {
                setState(() {
                  categoryVisibile = false;
                  infoVisible = false;
                });
              }
              else {
                setState(() {
                  categoryVisibile = false;
                  infoVisible = true;
                });
              }
            },
          ),
          Expanded(
            child: buildMainArea(),
          ),
        ],
      )
   );
  }
}