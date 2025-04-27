import 'package:flutter/material.dart';
import 'package:login_navigasi/profil.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Di sini kamu bisa tambahkan validasi kalau perlu
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
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'username',
              hintText: 'masukkan username',
              prefixIcon: const Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )
            ),
          ),


          const SizedBox(height: 20),


          TextField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'masukkan password',
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
              
              ),

              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },

              
              ),
            ),
          ),
          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: _login, 
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