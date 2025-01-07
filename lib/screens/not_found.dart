import 'package:flutter/material.dart';
import 'package:flutter_playground/components/styled_button.dart';
import 'package:get/get.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  void goHome() {
    Get.offAllNamed("/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Found"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                'Not Found',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
              StyledButton(onPressed: goHome, child: Text("Go to Home")),
            ],
          ),
        ),
      ),
    );
  }
}
