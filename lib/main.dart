import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

// creat StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

// creat StatefulWidget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // show data
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("เรียกใช้งานinitstate");
  }

  int number = 0;
  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน build");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "บัญชีของฉัน",
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 5),
            MoneyBox("ยอดคงเหลือ", 15000, Colors.lightBlue.shade400, 120, 24),
            SizedBox(height: 10),
            MoneyBox("รายรับ", 10000, Colors.green.shade400, 100, 24),
            SizedBox(height: 10),
            MoneyBox("รายจ่าย", 5000, Colors.red.shade400, 100, 24),
            SizedBox(height: 10),
            MoneyBox("ค้างชำระเงิน", 12000, Colors.orange.shade400, 100, 24),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
