import 'package:flutter/material.dart';
import 'dart:math'; // Thêm thư viện dart:math

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Màu nền toàn bộ trang
      backgroundColor: Colors.blue,
      // Thanh AppBar
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blueGrey,
      ),
      // Phần nội dung chính
      body: Ball1(),
    );
  }
}

// Tạo StatefulWidget mới tên Ball1
class Ball1 extends StatefulWidget {
  @override
  _Ball1State createState() => _Ball1State();
}

class _Ball1State extends State<Ball1> {
  int ballNumber = 1; // Khai báo biến ballNumber kiểu int, gán giá trị ban đầu là 1

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            // Sinh số ngẫu nhiên từ 1 đến 5
            ballNumber = Random().nextInt(5) + 1;
          });
          // In ra console giá trị của ballNumber
          print(ballNumber);
        },
        // Hiển thị ảnh theo số ngẫu nhiên được sinh ra
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
