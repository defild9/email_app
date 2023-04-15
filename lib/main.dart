import 'package:flutter/material.dart';
import 'package:navigation_lab/data/email_client.dart';
import 'package:navigation_lab/pages/email_detail_page.dart';
import 'package:navigation_lab/pages/main_page.dart';
import 'package:navigation_lab/pages/meet_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmailClient(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gmail App',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MainPage(),
          '/email': (context) => const EmailDetailPage(),
          '/meet': (context) => const MeetPage()
        },
      ),
    );
  }
}

