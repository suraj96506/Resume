import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1E1E1E),
          title: Text(
            "Resume Upload",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
            icon: Image.asset("assets/Icon-1.png"),
            onPressed: () {
              print("hello");
            },
            iconSize: 3,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white60, width: 0.2)),
                child: IconButton(
                  icon: Image.asset("assets/Icon-2.png"),
                  onPressed: () {
                    print("hello");
                  },
                  iconSize: 3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 34),
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white60, width: 0.2)),
                child: IconButton(
                  icon: Image.asset("assets/Icon-3.png"),
                  onPressed: () {
                    print("hello");
                  },
                  iconSize: 3,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1.1,
            width: MediaQuery.of(context).size.width * 100,
            child: Stack(
              children: [
                Container(
                  color: Color(0xff1E1E1E),
                ),
                Container(
                  height: 319,
                  decoration: new BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 55.0)),
                  ),
                  child: Image.asset(
                    "assets/Resume-1.png",
                  ),
                ),
                Positioned(
                  top: 305,
                  left: 110,
                  child: Container(
                    height: 39,
                    width: 204,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [100, 100],
                            colors: [Color(0xff32383E), Color(0xff32383E)])),
                    child: OutlineGradientButton(
                      onTap: () {
                        print("hello");
                      },
                      backgroundColor: Colors.transparent,
                      child: Text('Request Improvements',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFFE2CD),
                          Color(0xffFEC2E7),
                          Color(0xffC9E7FF),
                          Color(0xff86FEF4),
                        ],
                      ),
                      strokeWidth: 2,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      radius: Radius.circular(8),
                    ),
                  ),
                ),
                Positioned(
                  top: 368,
                  right: 18,
                  left: 18,
                  bottom: 58,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff141414),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "No Tips Yet",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
