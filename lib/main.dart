import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/course_list_page.dart';
import 'package:myapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ซ่อน Debug Banner
      title: 'CS KMUTNB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: GoogleFonts.kanit(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.sarabun(fontSize: 16, color: Colors.black87),
          bodySmall: GoogleFonts.sarabun(fontSize: 14, color: Colors.black54),
        ),
      ),

      // home: const MyHomePage(title: 'CS KMUTNB'),
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/courselist': (context) => CourseListPage(),
      },
    );
  }
}
