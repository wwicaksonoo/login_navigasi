import 'package:flutter/material.dart';
import 'package:login_navigasi/profil.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => L();
}

class L extends State<Login> {

  //ini yang bikin pass ilang
  bool passilang = true;

  //baca inputan
  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();

  //buat tombol login ngarah ke itu, halaman profil
  //bisa ditambahin validator buat login?? cuma gatau belom belajar
  void pencetan() {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sat()),
    );
  }


  

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login Sekarang"),
        centerTitle: true,
      ),

      body: Padding(
       padding:  const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: user,
            decoration: InputDecoration(
              labelText: 'username',
              hintText: 'masukkan username',
              prefixIcon: const Icon(Icons.person),
             
            ),
          ),


          const SizedBox(height: 20),

          //textfield kaya kemarin
          TextField(
            controller: pass,
            obscureText: passilang,
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'masukkan password',
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                  passilang ? Icons.visibility_off : Icons.visibility,
              
              ),

              onPressed: () {
                setState(() {
                  passilang = !passilang;
                });
              },

              
              ),
            ),
          ),
          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: pencetan, 
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            child: Text('login'),
            ),
            ),

        ],
      ),
      
      ),
      );


    

    


  }
}