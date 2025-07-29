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
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(), // วิดเจ็ตหน้าจอหลักของคุณ
    );
  }
}

// ตัวอย่างวิดเจ็ตที่ส่งคืนโดย property 'home' ของ MaterialApp
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
      body: Center(
        // พื้นที่เนื้อหาหลัก center กับwidgetได้1ตัว
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: 500.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 148, 255, 246),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(60.0),
              right: Radius.elliptical(45, 60),
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/image/kein1.jpg',
              width: 150,
              // height: 100, // สามารถละเว้นมิติหนึ่งเพื่อรักษาอัตราส่วนภาพ
              fit: BoxFit.contain, // ปรับขนาดให้พอดีภายในกล่องโดยไม่ตัดภาพ
            ),
          ),
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
