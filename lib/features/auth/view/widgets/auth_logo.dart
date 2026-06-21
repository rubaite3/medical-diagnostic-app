import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Utils.isLight(context)
                  ? 'assets/icons/appLogo-removebg-solo.png'
                  : 'assets/icons/appLogo-removebg-solo.png',//في حال زبطنا لوغو الدارك بشكل حلو منضيفو
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
