import 'package:flutter/material.dart';

class ConfirmationScreen extends StatefulWidget {
  final String phoneNumber;

  const ConfirmationScreen({super.key, required this.phoneNumber});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Container(
                        color: Colors.red,
                        height: 30,
                        width: double.infinity,
                      ),
                      content: Container(
                        color: Colors.green,
                        height: 50,
                        width: double.infinity,
                      ),
                      actions: List.generate(
                          3,
                          (i) => Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 20,
                                width: double.infinity,
                                color: Colors.yellow,
                              )),
                    ),
                  );
                },
                child: Text("Open dialog")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Hammaga salom")));
                },
                child: Text("show snackbar"))
          ],
        ),
      ),
    );
  }
}