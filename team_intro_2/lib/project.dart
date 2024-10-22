import 'package:flutter/material.dart';
import 'package:team_intro/main.dart';
import 'package:team_intro/profile_datail.dart';
import 'package:team_intro/team_intro.dart';

import 'contact.dart';

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
      home: const Project(title: '오늘도 민첩한 하루 되세요'),
    );
  }
}

class Project extends StatefulWidget {

  const Project({super.key, required this.title});

  final String title;

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int  _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("5민하 프로젝트")
      ),
      body: Text("뭐라 적지?"),
      bottomNavigationBar: BottomNavigationBar( // 페이지 하단의 네비게이션 바
        type: BottomNavigationBarType.fixed,
        // 아이템 정렬을 균일하게 설정
        selectedItemColor: Colors.pink,
        // 선택된 아이템의 색상
        unselectedItemColor: Colors.grey,
        // 선택되지 않은 아이템의 색상도 핑크로 설정
        currentIndex: _selectedIndex,
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  MyHomePage(title: "오늘도 민첩한 하루 되세요.")), // 홈 페이지로 이동
            );
          }
          else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  TeamIntroductionApp(title: "오늘도 민첩한 하루 되세요.")), // 홈 페이지로 이동
            );
          }
          else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  Project(title: "오늘도 민첩한 하루 되세요.")), // 홈 페이지로 이동
            );
          }
          else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  Contact(title: "오늘도 민첩한 하루 되세요.")), // 홈 페이지로 이동
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '팀 소개',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment), // 프로젝트를 대체할 아이콘
            label: '프로젝트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: '연락처',
          ),
        ],
      ),
    );
  }
}