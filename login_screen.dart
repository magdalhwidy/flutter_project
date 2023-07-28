import 'package:flutter/material.dart';

import 'package:project/view/sing_screen.dart';
import 'package:project/view/widgets/button.global.dart';
import 'package:project/view/widgets/social_login.dart';
import '../utils/global_colors.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/text_form_global.dart';






class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0XFF57A0D3),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                   ),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Login to your account",
                  style: TextStyle(
                    color: Color(0XFF57A0D3),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
              TextFormGlobal(
                controller: emailController,
                text: 'Email',
                obscure: false,
                textInputType: TextInputType.emailAddress,
              ),

                const SizedBox(height: 10),

             TextFormGlobal(
               controller: passwordController,
               text: 'password',
               textInputType: TextInputType.text,
               obscure: true,
             ),
                const SizedBox(height: 10),
                const ButtonGlobal(),
                const SizedBox(height: 25),
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account? ',
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/singup');
              },
              child: Text(
                'Sing Up',
                style: TextStyle(
                  color: Color(0XFF57A0D3),
                ),
              ),
            ),
           // InkWell(

         //   ),
          ],
        ),
      ),
    );
  }
}
