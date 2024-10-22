import 'package:flutter/material.dart';

class profileDetailPage extends StatelessWidget {
  final String name;
  final String title;
  final String imagePath;
  final Map<String, String> selfIntro;

  const profileDetailPage({
    Key? key,
    required this.name,
    required this.title,
    required this.imagePath,
    required this.selfIntro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          name,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: name,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(imagePath),
                ),
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  fontFamily: 'HMFMPYUN',
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontFamily: 'HMFMPYUN',
                ),
              ),
              SizedBox(height: 30),
              Text(
                "${selfIntro[name]}",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'HMFMPYUN',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('뒤로가기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}