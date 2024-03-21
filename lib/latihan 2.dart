import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Daftar path gambar yang sesuai dengan setiap tombol
  final List<String> buttonImages = [
    'images/logo goride.png',
    'images/gocar.png',
    'images/gofood.png',
    'images/gosend.png',
    'images/gomart.png',
    'images/gopulsa.png',
    'images/check.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek UI',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Gojek',
            style: TextStyle(
              color: Colors.white, // Warna teks putih
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Favorites',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Fungsi yang akan dipanggil saat tombol "Edit" ditekan
                    },
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green, // Warna teks hijau
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: List.generate(
                  buttonImages.length,
                      (index) => _buildButton(buttonImages[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun setiap tombol dengan gambar dan tombol "Edit" yang sesuai
  Widget _buildButton(String imagePath) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar belakang abu-abu
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}