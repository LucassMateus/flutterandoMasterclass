import 'package:desafio_1/components/button_login_page.dart';
import 'package:desafio_1/components/text_login_page.dart';
import 'package:flutter/material.dart';
import 'package:desafio_1/components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 100,
            ),
            child: Logo(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 5),
            child: Text_login_page(
              text: 'Get your Money',
              textColor: Colors.white,
              fontSize: 36,
              fontFamily: 'Sequel Sans',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text_login_page(
              text: 'Under Control',
              textColor: Colors.white,
              fontSize: 36,
              fontFamily: 'Sequel Sans',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text_login_page(
              text: 'Manage your expenses.',
              textColor: Color(0xFF6D6C6F),
              fontSize: 22,
              fontFamily: 'Sequel Sans',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text_login_page(
              text: 'Seamlessly',
              textColor: Color(0xFF6D6C6F),
              fontSize: 22,
              fontFamily: 'Sequel Sans',
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 70, left: 10, right: 10, bottom: 5),
            child: button_login_page(
              text: 'Sign Up with Email ID',
              textColor: Colors.white,
              buttonColor: const Color(0xFF5E5CE5),
              image: Container(),
              fontFamily: 'Sequel Sans',
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: button_login_page(
              image: Container(
                width: 35,
                height: 35,
                child: Image.asset('assets/images/google.png'),
              ),
              text: 'Sign Up With Google',
              textColor: Colors.black,
              buttonColor: Colors.white,
              fontFamily: 'Sequel Sans',
              fontSize: 16,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text.rich(
              TextSpan(
                text: 'Already have an account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Sequel Sans',
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Sequel Sans',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
