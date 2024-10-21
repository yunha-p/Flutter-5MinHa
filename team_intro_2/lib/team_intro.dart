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
        fontFamily: 'assets/Paperlogy',  // 기본 폰트를 Paperlogy로 설정
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.pink,
          titleTextStyle: TextStyle(
            fontFamily: 'assets/GumiRomance',  // vAppBar 제목에 GumiRomance 폰트 적용
            fontSize: 20,  // 폰트 크기 설정 (필요에 따라 조정)
            fontWeight: FontWeight.bold,  // 필요에 따라 조정
            color: Colors.pink,  // foregroundColor와 일치
          ),
        ),
      ),
      home: const TeamIntroductionApp(title: '오늘도 민첩한 하루 되세요'),
    );
  }
}

class TeamIntroductionApp extends StatefulWidget {

  const TeamIntroductionApp({super.key, required this.title});

  final String title;

  @override
  State<TeamIntroductionApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TeamIntroductionApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // 필수 Widget: Scaffold를 사용하여 전체 앱의 구조를 정의
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),  // 개별 스타일 지정 제거
          // title: Text(
          //   '오늘도 민첩한 하루되세요.',
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'HMFMPYUN', // 한글 Font 사용 조건을 충족
          //   ),
          // ),
          // centerTitle: true,
          // backgroundColor: Colors.white, // 앱바 배경은 깔끔한 흰색으로 설정
          // foregroundColor: Colors.black, // 텍스트는 검정색으로 설정
        ),
        body: Container( // 팀 고유의 배경 색상 적용
          color: Colors.lightBlue[50], // 팀 고유의 배경 색상 설정
          child: SafeArea(
            child: Center(
              child: Column( // 필수 Widget: Column을 사용하여 수직 레이아웃 구성
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 박윤하를 단독으로 1열에 배치한 Row
                  Row( // 필수 Widget: Row 사용. 한 명의 프로필을 포함한 Row
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildProfileCard(
                        '박윤하',
                        '유나유나',
                        'assets/images/yunha.png',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // 두 번째 Row에 두 명 배치
                  Row( // 필수 Widget: Row 사용. 두 명의 프로필을 포함한 Row
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildProfileCard(
                        '양도연',
                        '뇽안뇽안',
                        'assets/images/doyeon.png',
                      ),
                      buildProfileCard(
                        '엄자연',
                        '하이하이',
                        'assets/images/jayeon.png',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // 세 번째 Row에 두 명 배치
                  Row( // 필수 Widget: Row 사용. 두 명의 프로필을 포함한 Row
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildProfileCard(
                        '손영균',
                        '규니규니',
                        'assets/images/yunggun.png',
                      ),
                      buildProfileCard(
                        '김근호',
                        '그노그노',
                        'assets/images/kunho.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar( // 페이지 하단의 네비게이션 바
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
          selectedItemColor: Colors.blueAccent,
        ),
      ),
    );
  }

  Widget buildProfileCard(String name, String title, String imagePath) {
    return Container( // 필수 Widget: Container로 각 프로필 카드를 감싸서 스타일링
      width: 160,  // 카드의 너비를 키움
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // 카드의 모서리를 둥글게 처리
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // 그림자 효과 추가
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(12), // 패딩을 늘려 전체 크기를 키움
      child: Column( // Column을 사용하여 프로필 카드 내부 요소를 수직 배치
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack( // 필수 Widget: Stack을 사용하여 이미지와 아이콘을 겹쳐 배치
            children: [
              CircleAvatar(
                radius: 60,  // 이미지 크기를 키움
                backgroundImage: AssetImage(imagePath), // 필수 Widget: Image 사용
              ),
              Positioned( // 필수 Widget: Positioned를 사용해 아이콘의 위치를 조정
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.star, // 별 아이콘으로 포인트 효과
                  color: Colors.amber,
                  size: 24,  // 아이콘 크기 조정
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text( // 필수 Widget: Text 사용
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,  // 텍스트 크기 증가
              fontFamily: 'HMFMPYUN',  // 폰트 패밀리 설정 (한글 Font 사용 조건 충족)
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,  // 타이틀 텍스트 크기 증가
              fontFamily: 'HMFMPYUN',  // 한글 Font 사용 조건 충족
            ),
          ),
        ],
      ),
    );
  }


}
