import 'package:flutter/material.dart';

import 'package:chat_flutter_app/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(
                  title: 'Messenger',
                ),
                _Form(),
                const Labels(
                  route: 'register',
                  text: 'Creala ahora!',
                  subText: '¿No tienes cuenta?',
                ),
                const Text(
                  'Términos y condiciones de uso',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            hintText: 'Email',
            icon: Icons.email_outlined,
            textController: emailCtrl,
          ),
          CustomInput(
            hintText: 'Password',
            icon: Icons.password_outlined,
            textController: passCtrl,
            isVisible: true,
          ),
          BlueButton(
            onPress: () {},
            btnText: 'Ingrese',
          ),
        ],
      ),
    );
  }
}
