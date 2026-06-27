import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';

class Utils {
  static bool isLight(BuildContext ctx) {
    return MediaQuery.of(ctx).platformBrightness == Brightness.light;
  }

  static Either<AppError, AppResponse> mapStatusCodeToResponse(
    Response response,
  ) {
    return switch (response.statusCode) {
      200 => Right(response.data),
      _ => Left(
        AppError(errorMessage: response.statusMessage ?? "Some error occurred"),
      ),
    };
  }

  static void showToast({String message = "Custom", int level = 0}) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_SHORT,
      fontAsset: "Tajwal",
      backgroundColor: level == 0
          ? Colors.grey
          : level == 1
          ? Colors.green
          : Colors.red,
      textColor: level == 0 ? Colors.black : Colors.white,
    );
  }
}

Future<bool> hasInternet() async {
  try {
    final result = await InternetAddress.lookup(
      'google.com',
    ).timeout(Duration(seconds: 5));
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  } on TimeoutException catch (_) {
    return false;
  }
}
