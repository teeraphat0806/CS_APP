import 'package:flutter/material.dart';
import 'Footer.dart';

class CourseListPage extends StatefulWidget {
  const CourseListPage({super.key});

  @override
  State<CourseListPage> createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  final Map<String, List<String>> courseversion = {
    "new_course": [
      "หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิทยาการคอมพิวเตอร์\n(หลักสูตรปรับปรุง พ.ศ. 2564)",
      "หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิทยาการคอมพิวเตอร์\n(หลักสูตรปรับปรุง พ.ศ.2559)",
      "การปรับปรุงแก้ไขหลักสูตร\n(หลักสูตรวิทยาศาสตรบัณฑิตปี 2559)",
    ],
    "old_course": [
      "หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิทยาการคอมพิวเตอร์\n(หลักสูตรปรับปรุง พ.ศ. 2554)",
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("หลักสูตรภาคปกติ"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(124, 124, 124, 0.298),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'หลักสูตรปัจจุบัน',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: const Color.fromARGB(255, 0, 28, 128),
                          fontSize: 30,
                        ),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: courseversion["new_course"]!.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      courseversion["new_course"]![index],
                      style: TextStyle(
                        color: const Color.fromARGB(
                            255, 66, 18, 255), // Correct color format
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(124, 124, 124, 0.298),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'หลักสูตรเก่า',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: const Color.fromARGB(255, 0, 28, 128),
                          fontSize: 30,
                        ),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: courseversion["old_course"]!.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      courseversion["old_course"]![index],
                      style: TextStyle(
                        color: const Color.fromARGB(
                            255, 66, 18, 255), // Correct color format
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
