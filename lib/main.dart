import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'carousel_slider.dart'; // นำเข้าไฟล์ที่สร้างไว้
import 'detail_carousel_slide.dart';
import 'sidebarmenu.dart';
import 'Footer.dart';

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
      home: const MyHomePage(title: 'CS KMUTNB'),
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
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  final List<String> gallery = [
    'https://drive.google.com/uc?export=view&id=1nfA24-joCPQcm7a_4H49ptYMueGx8uvt',
    'http://cs.kmutnb.ac.th/img/banner/con_tsr.png',
    'http://cs.kmutnb.ac.th/img/banner/MS1-2568.png',
  ];
  final List<String> images = [
    "http://cs.kmutnb.ac.th/img/course2.jpg",
    "http://cs.kmutnb.ac.th/img/course4.jpg",
    "http://cs.kmutnb.ac.th/img/course6.jpg",
    "http://cs.kmutnb.ac.th/img/course1.jpg",
    "http://cs.kmutnb.ac.th/img/course7.jpg",
  ];

  final List<String> titles = [
    "วิทยาการคอมพิวเตอร์ (ภาคปกติ)",
    "วิทยาการคอมพิวเตอร์ (สองภาษา)",
    "วิศวกรรมซอฟต์แวร์ (ป.โท)",
    "วิศวกรรมซอฟต์แวร์ (ป.โท)",
    "วิทยาการคอมพิวเตอร์ (ป.เอก)",
  ];

  final List<String> details = [
    "Bachelor of Science Program in Computer Science",
    "Bachelor of Science Program in Computer Science",
    "Master of Science Program in Computer Science",
    "Master of Science Program in Software Engineering",
    "Doctor of Philosophy Program in Computer Science",
  ];

  final List<String> dates = [
    "มีนาคม 2564",
    "มีนาคม 2564",
    "มีนาคม 2564",
    "มีนาคม 2564",
    "มีนาคม 2564",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90, // ปรับความสูงของ AppBar ให้ใหญ่พอ
        title: Image.network(
          'http://cs.kmutnb.ac.th/img/logo.png',
          height: 70, // คงขนาดของโลโก้
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black26,
      ),
      drawer: Sidebarmenus(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            /// **แสดงภาพ Carousel**
            CustomCarouselSlider(images: gallery),

            const SizedBox(height: 25),

            /// **หัวข้อหลักสูตร**
            Text(
              '🎓 หลักสูตรของเรา',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.blueAccent,
                fontSize: 30,
              ),
            ),

            const SizedBox(height: 15),

            /// **แสดงหลักสูตร**
            DetailCarouselSlide(
              images: images,
              title: titles,
              detail: details,
              date: dates,
            ),

            const SizedBox(height: 20),

            const SizedBox(height: 15),

            /// **Footer**
            FooterWidgetss(scrollToTop: _scrollToTop),
          ],
        ),
      ),
    );
  }
}
