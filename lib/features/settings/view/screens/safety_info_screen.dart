import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';

class SafetyInfoScreen extends StatelessWidget {
  const SafetyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).safetyInfo),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'This section provides important safety information regarding the use of the application. Please read carefully.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}