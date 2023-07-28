import 'package:flutter/material.dart';
import 'package:project/utils/global_colors.dart';
import 'package:project/view/home_screen.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String txt = "Sign in";
    return InkWell(
      onTap: (){
        print('Login');
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color:Color(0XFF57A0D3),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),

        child: const Text(
            'Sing In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
