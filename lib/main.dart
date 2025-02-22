import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menus.dart';
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
    'https://lh3.googleusercontent.com/d/1Bgr-M0T23MfDuHNClEzw7w-BilSPFqIO=w1000',
    'https://lh3.googleusercontent.com/d/1wQmsiupsteMm1_n2bHbqXeAE6GNvYhDI=w1000',
    'https://lh3.googleusercontent.com/d/1a7NSEzHLlomJGezdoB_VgUZjLGDHsVzi=w1000',
  ];
  final List<String> images = [
    "https://lh3.googleusercontent.com/d/1nfA24-joCPQcm7a_4H49ptYMueGx8uvt=w1000",
    "https://lh3.googleusercontent.com/d/1bi4cKu06V6mqSLiJ7SQBgXNy56cDXpTk=w1000",
    "https://lh3.googleusercontent.com/d/16uhVyxLc2IwKfVIJ6jDf7uCaEtvxx9TB=w1000",
    "https://lh3.googleusercontent.com/d/1Ow6D0FNLSrCS0wqkGm3vAuCmCBfde5kh=w1000",
    "https://lh3.googleusercontent.com/d/1igNcQhZsA6XXroeFogaGLUAjk_m5Wblo=w1000",
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
          'https://lh3.googleusercontent.com/d/1vOAxsOruch4kDHI_JiZQURCXsQlCx-s6=w1000',
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
            
            /// **ข่าวสาร**
            const SizedBox(height: 25),
            //NewsScreen(),

            const SizedBox(height: 15),

            /// **Footer**
            FooterWidgetss(scrollToTop: _scrollToTop),
          ],
        ),
      ),
    );
  }
}
