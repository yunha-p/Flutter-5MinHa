import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.width / 3;
    print("이미지의 넓이 : ${imageWidth}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 122, 255, 100),
        title: Text(
          "'오늘도 민첩한 하루 되세요'",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: "TEST",
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // spaceAround에서 start로 변경
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(229, 229, 234, 80),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              margin: EdgeInsets.only(top: 30, bottom: 2),
              padding: EdgeInsets.all(15),
              child: const Text(
                "'알겠다구'",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "TEST",
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/여니여니.png",
                      width: imageWidth,
                    ),
                    Positioned(
                      bottom: 10,
                      child: Text(
                    "여니여니",
                      style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                        backgroundColor: Colors.black.withOpacity(0.5),
                      ),
                      ),
                    ),
                  ],
                ),


                Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        "assets/images/규니규니.png",
                        width: imageWidth,
                      ),
                      Positioned(
                        bottom: 10,
                        child: Text(
                          "규니규니",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            backgroundColor: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),

                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/그노그노.png",
                      width: imageWidth,
                    ),
                    Positioned(
                      bottom: 10,
                      child: Text(
                        "그노그노",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                // Column(
                //   children: [
                //     Image.asset(
                //       "assets/images/규니규니.png",
                //       width: imageWidth,
                //     ),
                //     Text("규니규니"),
                //   ],
                // ),
                // Column(
                //   children: [
                //     Image.asset(
                //       "assets/images/그노그노.png",
                //       width: imageWidth,
                //     ),
                //     Text("그노그노"),
                //   ],
                // ),
              ],
            ),
            SizedBox(height: 20), // 아래 Row와의 간격 조정
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter, // 이미지 아래쪽에 텍스트를 배치
                  children: [
                    Image.asset(
                      "assets/images/요니요니.png",
                      width: imageWidth,
                    ),
                    Positioned(
                      bottom: 10, // 이미지 아래 10px에 텍스트를 배치
                      child: Text(
                        "요니요니",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, // 텍스트가 이미지 위에서 잘 보이도록 색상 조정
                          backgroundColor: Colors.black.withOpacity(0.5), // 텍스트 배경색 추가
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter, // 이미지 아래쪽에 텍스트를 배치
                  children: [
                    Image.asset(
                      "assets/images/유나유나.png",
                      width: imageWidth,
                    ),
                    Positioned(
                      bottom: 10, // 이미지 아래 10px에 텍스트를 배치
                      child: Text(
                        "유나유나",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Text("5민하 최고 :D"),
    );
  }
}
