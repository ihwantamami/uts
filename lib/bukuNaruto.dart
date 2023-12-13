import 'package:flutter/material.dart';

class bukuNaruto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naruto'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter, // To center the image at the top
              child: Image.asset(
                'assets/narutoo.jpg',
                width: 500.0,
                height: 500.0,
              ),
            ),
            Container(
              color: Colors.blue, // Background color blue
              padding: EdgeInsets.all(8.0), // Padding for text
              child: Text(
                'Naruto (ナルト) is a manga series by Masashi Kishimoto that was adapted into an anime series. The manga tells the story of the main character, Naruto Uzumaki, a hyperactive, cheerful, and ambitious ninja who wants to achieve his dream of becoming the Hokage, the leader and the strongest ninja in his village. The series is based on a one-shot comic by Kishimoto that was published in Akamaru Jump in August 1997. The Naruto manga was first published in Japan by Shueisha in the 43rd issue of Shonen Jump magazine in 1999. In Indonesia, the manga is published by Elex Media Komputindo. The popularity and length of the Naruto series (especially in Japan) rival that of Akira Toriyama\'s Dragon Ball, while the Naruto anime series, produced by Studio Pierrot and Aniplex, first aired in Japan on TV Tokyo and other anime satellite television networks, such as Animax and others, on October 3, 2002. The first series consists of 9 seasons and runs for 220 episodes. The first season of the second series began airing on February 15, 2007. In Indonesia, the Naruto anime was originally broadcast by Trans TV from 2004 to 2005, and later by GTV from 2005. It was also briefly aired on Indosiar for the fourth and fifth seasons and Naruto Shippuden\'s fifth season from 2008 to 2009. In addition to the anime series, Studio Pierrot has produced eight films for the series and several original video animations (OVAs). Merchandise for Naruto includes light novels, video games, and trading cards developed by various companies.',
                style: TextStyle(
                  color: Colors.white, // Text color white
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
