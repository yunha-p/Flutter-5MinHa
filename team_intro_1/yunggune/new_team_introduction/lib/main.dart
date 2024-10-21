import 'package:flutter/material.dart'; // 안드로이드 디자인 패키지 import

void main() {                           // 최초 프로그램이 시작하는 곳
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
}               // flutter app

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}           // 화면

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {                         // 오른쪽 화면 = context
    double imageWidth = MediaQuery.of(context).size.width / 3;
    double imageWidth2 = MediaQuery.of(context).size.width / 2;
    // MediaQuery 정보를 알아보는 객체, 누구의 객체를? context = 화면

    double imageHeight = 200;

    return Scaffold(                    // 객체
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100,),
        child: AppBar(
          // backgroundColor: Colors.pink,
          // title: Text(widget.title),
          // title: Text("Team 소개",style: TextStyle(fontSize: 40,color: Colors.yellowAccent),),
          flexibleSpace: Image.asset(
              'images/배경화면.jpeg',width: double.infinity,
              fit: BoxFit.cover),
          /*
          flexibleSpace: Image(
            image: AssetImage('images/배경화면.jpg'), // 이미지 경로
            fit: BoxFit.cover, // 이미지를 AppBar 크기에 맞게 맞춤
          ),
          */
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment : MainAxisAlignment.spaceEvenly, // 간격 관련
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              // color: Colors.cyan,
              // color: Colors.yellow,
              // margin: EdgeInsets.all(50),
              child: const Text(
                // 'You have pushed the button this many times:',
                "오늘도 민첩한 하루 되세요.",
                textAlign : TextAlign.center,
                style: TextStyle(
                  color:Colors.pinkAccent,
                  fontSize: 50,
                  fontFamily: "HSSaemaeul",
                  // backgroundColor: Colors.yellow,
                  // fontStyle: FontStyle.italic,      // 글자 기울어짐
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("images/윤하.png",
                      width: imageWidth,height: imageHeight,),
                    SizedBox(height: 10),
                    Container(
                      width: imageWidth,
                      child: Text(
                        "윤하",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, fontFamily:"HSSaemaeul"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("images/자연.png",
                      width: imageWidth,height: imageHeight),
                    SizedBox(height: 10,),
                    Container(
                      width: imageWidth,
                      child: Text(
                        "자연",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, fontFamily: "HSSaemaeul"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("images/도연.png",
                      width: imageWidth,height: imageHeight),
                    Container(
                      width: imageWidth,
                      child: Text(
                        "도연",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, fontFamily:"HSSaemaeul" ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("images/근호.png",
                      width: imageWidth,height: imageHeight,),
                    SizedBox(height: 10),
                    Container(
                      width: imageWidth,
                      child: Text(
                        "근호",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, fontFamily:"HSSaemaeul"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("images/영균.png",
                        width: imageWidth,height: imageHeight),
                    // SizedBox(height: 5,),
                    Container(
                      width: imageWidth,
                      child: Text(
                        "영균",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, fontFamily: "HSSaemaeul"),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}  // 화면
