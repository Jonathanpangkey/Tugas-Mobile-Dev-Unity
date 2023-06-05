import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Unity',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Simple Flutter App'),
          centerTitle: true,
          leading: Icon(Icons.home),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String imageUrl =
      'https://source.unsplash.com/700x450/?aurora';
  final String profileImageUrl =
      'https://media.licdn.com/dms/image/C4D03AQG2lBMQs4DcLg/profile-displayphoto-shrink_800_800/0/1651047061118?e=2147483647&v=beta&t=AChluP0yBjxpnAmcLytGD7wF5g3JYemySl5BRlF-c1U';
  final String name = 'Jonathan Andreas Pangkey';
  final String studentId = '210211060017';
  final String bio = 'Hanya seorang mahasiswa Teknik Informatika biasa';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Transform.translate(
            offset: Offset(0.0, -70.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25),
                    ClipOval(
                      child: Image.network(
                        profileImageUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      name,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      studentId,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      bio,
                      style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
