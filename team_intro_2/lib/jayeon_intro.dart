import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const seedColor = Color(0xFFFFC0D9);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '5MinHa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        fontFamily: 'Paperlogy',  // 기본 폰트를 Paperlogy로 설정
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.pink,
          titleTextStyle: TextStyle(
            fontFamily: 'GumiRomance',  // vAppBar 제목에 GumiRomance 폰트 적용
            fontSize: 20,  // 폰트 크기 설정 (필요에 따라 조정)
            fontWeight: FontWeight.bold,  // 필요에 따라 조정
            color: Colors.pink,  // foregroundColor와 일치
          ),
        ),
      ),
      home: const JayeonIntro(title: '오늘도 민첩한 하루 되세요'),
    );
  }
}

class JayeonIntro extends StatefulWidget {

  const JayeonIntro({super.key, required this.title});

  final String title;

  @override
  State<JayeonIntro> createState() => _JayeonIntroductionState();
}

class _JayeonIntroductionState extends State<JayeonIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container( // 팀 고유의 배경 색상 적용
        child: Text("body"),
      ),
      bottomNavigationBar: BottomNavigationBar( // 페이지 하단의 네비게이션 바
        type: BottomNavigationBarType.fixed, // 아이템 정렬을 균일하게 설정
        selectedItemColor: Colors.pink, // 선택된 아이템의 색상
        unselectedItemColor: Colors.pink, // 선택되지 않은 아이템의 색상도 핑크로 설정
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.pink,),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Colors.pink,),
            label: '팀 소개',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.pink,), // 프로젝트를 대체할 아이콘
            label: '프로젝트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail, color: Colors.pink,),
            label: '연락처',
          ),
        ],
      ),
    );
  }

  }

