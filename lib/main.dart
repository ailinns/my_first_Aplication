import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 255, 221),
        ),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 104, 187, 255), // ปรับแต่งสี AppBar
      ),
      body: Center(
        // จัดกึ่งกลาง Container
        child: Container(      // กล่อง
          padding: EdgeInsets.all(50.0),
          width: 300.0,
          height: 200.0,
          //color: const Color.fromARGB(255, 255, 239, 191), // สีพื้นหลัง
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 233, 165),
            borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          child: const Text('Inside container',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(221, 255, 16, 128),
          ),
          ),
          // Child และ Padding จะมาตรงนี้
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // การกระทำที่จะทำเมื่อกดปุ่ม
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add), // ไอคอนสำหรับปุ่ม
      ),
    );
  }
}
