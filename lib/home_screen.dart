import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modul6/bukuA.dart';
import 'package:modul6/bukuJujutsu.dart';
import 'package:modul6/bukuNaruto.dart';
import 'package:modul6/harry.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key});

  @override
  Widget build(BuildContext context) {
    String? username = ModalRoute.of(context)?.settings.arguments as String?;
    if (username == null) {
      username = 'Guest';
    }
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _categoryButton(context, "All"),
                _categoryButton(context, "Fantasy"),
                _categoryButton(context, "Horror"),
                _categoryButton(context, "Adventure"),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              width: double.maxFinite,
              child: const Text(
                'Buku Populer',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 700,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  _listItem(
                    'assets/harry.jpg',
                    'Harry Potter',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bukuA(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItem(
                    'assets/jujutsu.jpg',
                    'Jujutsu Kaisen',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bukuJujutsu(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _listItem(
                    'assets/narutoo.jpg',
                    'Naruto',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bukuNaruto(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("ihwan"), // Ganti dengan nama Anda
              accountEmail: Text("ihwan@gmail.com"), // Ganti dengan email Anda
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ihwan.jpeg'), // Ganti dengan path gambar Anda
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Harry Potter'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bukuA(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Jujutsu Kaisen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bukuJujutsu(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Naruto'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bukuNaruto(),
                  ),
                );
              },
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              trailing: Icon(Icons.cancel),
              title: Text('Close'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
Widget _listItem(String assetImagePath, String bookTitle, Function() onTap) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            assetImagePath,
            width: 200.0, // Ukuran yang sama untuk lebar
            height: 200.0, // Ukuran yang sama untuk tinggi
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
Widget _categoryButton(BuildContext context, String category) {
  return ElevatedButton(
    onPressed: () {
      if (category == "Fantasy") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => harry(),
          ),
        );
      } else {
        // Implement the category filtering logic for other categories here
      }
    },
    child: Text(category),
  );
}
