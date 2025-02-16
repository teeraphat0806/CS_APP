import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidgetss extends StatelessWidget {
  final VoidCallback scrollToTop;

  const FooterWidgetss({Key? key, required this.scrollToTop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// **ส่วนแรก - Background Gradient สีน้ำเงินฟ้า**
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[800]!, Colors.blue[600]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// **ชื่อภาควิชา**
              Text(
                "📚 ภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ",
                style: GoogleFonts.kanit(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              /// **รายละเอียดเกี่ยวกับภาควิชา**
              Text(
                "คณะวิทยาศาสตร์ประยุกต์\nมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
                style: GoogleFonts.sarabun(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 25),

              /// **แบ่งเป็น 2 ส่วน: เมนูลัด และ ติดต่อเรา**
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// **เมนูลัด**
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "🔗 เมนูลัด",
                          style: GoogleFonts.kanit(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        _footerLink("• คู่มือนักศึกษา"),
                        _footerLink("• Link สำหรับนักศึกษา"),
                        _footerLink("• Link สำหรับบุคลากร"),
                      ],
                    ),
                  ),

                  /// **ติดต่อเรา**
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "📞 ติดต่อเรา",
                          style: GoogleFonts.kanit(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        _contactInfo(
                          Icons.location_on,
                          "ภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ\nคณะวิทยาศาสตร์ประยุกต์ มจพ.",
                        ),
                        const SizedBox(height: 8),
                        _contactInfo(Icons.phone, "02-555-2000 ต่อ 4601, 4602"),
                        const SizedBox(height: 8),
                        _contactInfo(Icons.web, "CIS KMUTNB"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// **Social Media**
            ],
          ),
        ),

        /// **ส่วนล่าง - Copyright + ปุ่ม "Back to Top"**
        Container(
          color: Colors.black,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              /// **ข้อความลิขสิทธิ์**
              Text(
                "© 2024 Department of Computer and Information Sciences, Faculty of Applied Science (KMUTNB)",
                style: GoogleFonts.sarabun(color: Colors.white70, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              /// **ปุ่ม "Back to Top"**
              GestureDetector(
                onTap: scrollToTop,
                child: Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.blue[700]!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Back to Top",
                        style: GoogleFonts.kanit(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// **Widget สำหรับแสดง Link ต่างๆ**
  Widget _footerLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: GoogleFonts.sarabun(color: Colors.white, fontSize: 16),
      ),
    );
  }

  /// **Widget สำหรับแสดงข้อมูลติดต่อ**
  Widget _contactInfo(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.white, size: 18),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.sarabun(color: Colors.white70, fontSize: 16),
          ),
        ),
      ],
    );
  }

  /// **Widget สำหรับไอคอน Social Media**
}
