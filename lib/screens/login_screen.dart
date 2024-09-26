import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/confiemetion.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
 State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Войти в личный кабинет ",
            style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
        'Введите номер телефона',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: const Color(0xFF6E6E73),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 396,
            child: TextFormField(
              controller: _controller,
              inputFormatters: [maskFormatter],
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    '+998',
                    style: GoogleFonts.inter(fontSize: 14),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 396,
            height: 56,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF3D82D0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => ConfirmationScreen(phoneNumber: "+998${_controller.text}")));
                },
                child: Text(
                  'Получить код активации',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      )),
    );
  }
}