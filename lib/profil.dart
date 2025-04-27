import 'package:flutter/material.dart';
import 'package:login_navigasi/Nama.dart';
import 'package:login_navigasi/Tombol.dart';

class Sat extends StatefulWidget {
  const Sat({super.key});

  @override
  State<Sat> createState() => _SatState();
}
//defaultnya terang
class _SatState extends State<Sat> {
  bool gelap = false;
//buat ganti tema
  void toggleTheme() {
    setState(() {
      gelap = !gelap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gelap ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: gelap ? Colors.grey[900] : Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('User Profile'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            avatar(),
            Nama(),
            follower(),
            action(),
            const SizedBox(height: 20),
            Tombol(onPressed: toggleTheme, ganti: gelap),
          ],
        ),
      ),
    );
  }
}

  Column action() {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('Edit Profile'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('Edit Profile'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 65, 65),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.person_add_alt_rounded),
                      ),
                    ),
                  ],
                ),
              
                
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 66, 65, 65),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.add, size: 15), Text('Add bio')],
                    ),
                  ),
                ],
              ),
            ],
          );
  }

  Row follower() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(children: [Text('100'), Text('Following')]),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [Text('100'), Text('Followers')]),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(children: [Text('100'), Text('Likes')]),
                ),
              ),
            ],
          );
  }

  Stack avatar() {
    return Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              Icon(Icons.person, size: 80, color: Colors.grey),
              Positioned(
                right: 5,
                bottom: 5,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),

                  child: Icon(Icons.add, size: 15),
                ),
              ),
            ],
          );
  }




