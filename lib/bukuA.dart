import 'package:flutter/material.dart';

class bukuA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Potter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter, // To center the image at the top
              child: Image.asset(
                'assets/harry.jpg',
                width: 500.0,
                height: 500.0,
              ),
            ),
            Container(
              color: Colors.blue, // Background color blue
              padding: EdgeInsets.all(16.0), // Padding for text
              child: Column(
                children: <Widget>[
                  Text(
                    'Harry Potter adalah seri tujuh novel fantasi yang dikarang oleh penulis Inggris J. K. Rowling. Novel ini mengisahkan tentang petualangan seorang penyihir remaja bernama Harry Potter dan sahabatnya, Ron Weasley dan Hermione Granger, yang merupakan pelajar di Sekolah Sihir Hogwarts.',
                    style: TextStyle(
                      color: Colors.white, // Text color white
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Inti cerita dalam novel-novel ini berpusat pada upaya Harry untuk mengalahkan penyihir hitam jahat bernama Lord Voldemort, yang berambisi untuk menjadi makhluk abadi, menaklukkan dunia sihir, menguasai orang-orang nonpenyihir, dan membinasakan siapapun yang menghalangi jalannya, terutama Harry Potter.',
                    style: TextStyle(
                      color: Colors.white, // Text color white
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Sejak dirilisnya novel pertama, "Harry Potter and the Philosopher\'s Stone" (di Indonesia diterbitkan dengan judul "Harry Potter dan Batu Bertuah") pada tanggal 30 Juni 1997, seri ini telah mendapatkan popularitas besar, berbagai pujian kritis, dan kesuksesan komersial di seluruh dunia.',
                    style: TextStyle(
                      color: Colors.white, // Text color white
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Beberapa kritikus juga melontarkan kritikan negatif, terutama karena temanya yang gelap. Hingga Februari 2023, seri ini telah terjual lebih dari 600 juta kopi di seluruh dunia, menjadikannya sebagai novel seri paling laris sepanjang masa, dan telah diterjemahkan ke dalam 85 bahasa. Empat novel terakhir secara berturut-turut mencetak rekor sebagai buku dengan penjualan tercepat dalam sejarah.',
                    style: TextStyle(
                      color: Colors.white, // Text color white
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
