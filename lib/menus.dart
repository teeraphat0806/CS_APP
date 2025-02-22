import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsScreen extends StatelessWidget {
  final List<String> categories = [
    "ข่าวล่าสุด",
    "ข่าวภาควิชาฯ",
    "ข่าวคณะและมหาวิทยาลัย",
    "ข่าวทุนการศึกษา",
    "ข่าวรับสมัครงาน-ประชาสัมพันธ์",
  ];

  final Map<String, List<Map<String, String>>> newsData = {
    "ข่าวล่าสุด": [
      {
        "title":
            "การอบรมเชิงปฏิบัติการ Generative AI for Education สำหรับนักศึกษาคณะวิทยาศาสตร์ประยุกต์",
        "image":
            "https://lh3.googleusercontent.com/d/1eidjs7CnGRsZIdUFVP7cyOAQGsUQZXwx=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=403",
      },
      {
        "title":
            "ประกาศภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ เรื่องการฝึกงาน ประจำปี 2567",
        "image":
            "https://lh3.googleusercontent.com/d/11gnKXe940R6ZV4nXDoEdVirDJdDyPU8t=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=402",
      },
      {
        "title":
            "ประชาสัมพันธ์รับสมัครการประกวดหัวข้อโครงการวิจัยระดับนักศึกษา SCIENCE EXHIBITION DAY 2025",
        "image":
            "https://lh3.googleusercontent.com/d/1Jg2W98fAMcDp46MIEj6_iA7EDCg4mLdK=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=401",
      },
    ],
    "ข่าวภาควิชาฯ": [
      {
        "title":
            "ประกาศภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ เรื่องการฝึกงาน ประจำปี 2567",
        "image":
            "https://lh3.googleusercontent.com/d/1Y4RXeRVHd8kJ81tB9WcJxCB4yAVmgKg7=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=402",
      },
      {
        "title": "ภาพบรรยากาศโครงการสีน้ำกับดอกไม้",
        "image":
            "https://lh3.googleusercontent.com/d/1dBK-GiKxtuvPOLu083Ip4RWiseF__X-O=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=400",
      },
      {
        "title":
            "ประกาศ เรื่อง การให้ทุนอุดหนุนการศึกษา ประเภทเรียนดี โครงการพิเศษ (สองภาษา) ประจำภาคเรียนที่ 1 ปีการศึกษา 2567",
        "image":
            "https://lh3.googleusercontent.com/d/1ucnSNVUmmkEtV8LM-Y8wZhvfF28e7BxR=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=399",
      },
    ],
    "ข่าวคณะและมหาวิทยาลัย": [
      {
        "title":
            "การอบรมเชิงปฏิบัติการ Generative AI for Education สำหรับนักศึกษาคณะวิทยาศาสตร์ประยุกต์",
        "image":
            "https://lh3.googleusercontent.com/d/1pVwugTrRRwK4jiZMhEBqDvj0mjAtoEd0=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=403",
      },
      {
        "title":
            "ประกาศภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ เรื่องการฝึกงาน ประจำปี 2567",
        "image":
            "https://lh3.googleusercontent.com/d/1hoZLkAINskaK1KSEf80VXqPkx-cS4aTX=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=402",
      },
      {
        "title":
            "คณะศิลปศาสตร์ประยุกต์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ เปิดรับสมัครสอบK-StEP TEST ครั้งที่ 1 ประจำปี พ.ศ.2568",
        "image":
            "https://lh3.googleusercontent.com/d/1QxFY9swVgyE_O6JAarVYDVTxVdmwGGDW=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=396",
      },
    ],
    "ข่าวทุนการศึกษา": [
      {
        "title":
            "ประกาศทุนอุดหนุนการศึกษาแก่นักศึกษาโครงการสมทบพิเศษ ประเภทเรียนดี ระดับปริญญาตรี ประจำภาคเรียนที่ 1 ปีการศึกษา 2567",
        "image":
            "https://lh3.googleusercontent.com/d/1_obOPL9P7qTLRHZLmgLqu_bt0krZVJ_X=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=398",
      },
      {
        "title":
            "ประกาศทุนพัฒนาวิชาการประเภทเรียนดี แก่นักศึกษาระดับปริญญาตรีหลักสูตรปกติ ประจำภาคเรียนที่ 1ปีการศึกษา2567",
        "image":
            "https://lh3.googleusercontent.com/d/1sujdTDyQYai-ENhsTW4lD9bbRVvF-Qcp=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=396",
      },
      {
        "title":
            "ประกาศการให้ทุนอุดหนุนการศึกษา ประเภทขาดแคลนหรือช่วยเหลืองานกิจกรรม ประจำภาคเรียนที่ 2 ปีการศึกษา 2567",
        "image":
            "https://lh3.googleusercontent.com/d/1cVv7dM59bRYWZIYV7lTh_E5jLQhnTBl_=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=383",
      },
    ],
    "ข่าวรับสมัครงาน-ประชาสัมพันธ์": [
      {
        "title":
            "ประชาสัมพันธ์ กรุงศรี นิมเบิล เปิดโอกาสให้น้องๆ นิสิต นักศึกษา เข้าร่วมโครงการฝึกงานพิเศษ Krungsri Nimble Tech Academy ",
        "image":
            "https://lh3.googleusercontent.com/d/1Rd4VA0BYUuYMN3p5eya0JpvoycJajzK6=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=393",
      },
      {
        "title": "ประชุมด้วย Google Meet แล้วต้องการดูย้อนหลัง",
        "image":
            "https://lh3.googleusercontent.com/d/1Wsw632whLuncg5i8yqWR2HdF_du_ZuCK=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=385",
      },
      {
        "title":
            "ประชาสัมพันธ์Tata Consultancy Services (Thailand) Limited เปิดรับสมัครงาน",
        "image":
            "https://lh3.googleusercontent.com/d/18Bp4f9JNJkjTIlQDKtkUkd8PUwglRMqm=w1000",
        "link": "http://cs.kmutnb.ac.th/news_detail_1.jsp?topic=null&num=381",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        body: Column(
          children: [
            Material(
              color: Colors.blue,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.white,
                indicatorColor: Colors.yellow,
                tabs:
                    categories.map((category) => Tab(text: category)).toList(),
              ),
            ),
            // ส่วนแสดงเนื้อหา
            Expanded(
              child: TabBarView(
                children:
                    categories.map((category) {
                      return NewsList(newsList: newsData[category] ?? []);
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  final List<Map<String, String>> newsList;

  const NewsList({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final news = newsList[index];

        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => NewsDetailScreen(
                        title: news["title"] ?? "ข่าว",
                        url: news["link"] ?? "",
                      ),
                ),
              );
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: news["image"]!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) => Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey.shade200,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    errorWidget:
                        (context, url, error) => Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey.shade200,
                          child: const Icon(
                            Icons.broken_image,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news["title"]!,
                          style: GoogleFonts.kanit(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "อ่านเพิ่มเติม",
                              style: GoogleFonts.kanit(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class NewsDetailScreen extends StatelessWidget {
  final String title;
  final String url;

  const NewsDetailScreen({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.kanit(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.article, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            Text(
              "อ่านข่าวเพิ่มเติมที่",
              style: GoogleFonts.kanit(fontSize: 18),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Text(
                url,
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
