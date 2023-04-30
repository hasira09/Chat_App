import 'package:chat_app/MainScreens/ChatScreen1.dart';
import 'package:chat_app/MainScreens/Profile.dart';
import 'package:chat_app/MainScreens/Settings.dart';
import 'package:chat_app/MainScreens/VideoCall.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //total height and width of device
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
        child: Stack(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Good Morning \nLaura",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          child: Image.asset("assets/Laura.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.08),
                    Expanded(
                      child: GridView(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen1(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  size.width * 0.05,
                                ),
                                color: Color.fromRGBO(128, 128, 128, 0.25),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Icons/Chat.svg",
                                    height: size.height * 0.14,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    "Chat",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontSize: size.width * 0.05,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VideoCall(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  size.width * 0.05,
                                ),
                                color: Color.fromRGBO(0, 0, 128, 0.1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Icons/VideoCall.svg",
                                    height: size.height * 0.14,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    "Video Call",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontSize: size.width * 0.05,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  size.width * 0.05,
                                ),
                                color: Color.fromRGBO(0, 0, 128, 0.1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Icons/Profile.svg",
                                    height: size.height * 0.14,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    "Profile",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontSize: size.width * 0.05,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Settings(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  size.width * 0.05,
                                ),
                                color: Color.fromRGBO(128, 128, 128, 0.25),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Icons/Settings.svg",
                                    height: size.height * 0.14,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    "Settings",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontSize: size.width * 0.05,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
