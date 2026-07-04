import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';

class Utils {
  static bool isLight(BuildContext ctx) {
    return MediaQuery.of(ctx).platformBrightness == Brightness.light;
  }

  static int mapOp(Operation op) {
    return switch (op) {
      Operation.failure => -1,
      Operation.neutral => 0,
      Operation.success => 1,
    };
  }

  static Either<AppError, AppResponse> mapStatusCodeToResponse(
    Response response,
  ) {
    if (200 <= (response.statusCode ?? 500).toInt() &&
        (response.statusCode ?? 500).toInt() < 300) {
      return Right(response.data);
    } else {
      if (response.statusCode == 401) {
        GetIt.instance<AuthBloc>().add(AuthEvent.authToggeled(null));
      }
      if (response.statusCode == 422) {
        if (response.data.data["errors"] == null) {
          return Left(
            AppError(
              errorMessage:
                  response.data.data["message"] ?? "Some error occurred",
              statusCode: response.statusCode ?? 500,
            ),
          );
        }
        final errors = response.data.data["errors"] as Map<String, dynamic>;
        var errorMessage = "";
        errors.forEach((key, value) {
          for (var error in (value as List)) {
            if (value.indexOf(error) != 0) {
              errorMessage += "\n";
            }
            errorMessage += error;
          }
        });
        return Left(
          AppError(
            errorMessage: errorMessage.isEmpty
                ? "Some error occurred"
                : errorMessage,
            statusCode: response.statusCode ?? 500,
          ),
        );
      }
      return Left(
        AppError(
          errorMessage: response.statusMessage ?? "Some error occurred",
          statusCode: response.statusCode ?? 500,
        ),
      );
    }
  }

  static void showToast(
    BuildContext context, {
    String message = "Custom",
    int level = 0,
  }) {
    final color = switch (level) {
      1 => const Color(0xFF2E7D32),
      -1 => const Color(0xFFC62828),
      _ => const Color(0xFF424242),
    };
    final icon = switch (level) {
      1 => Icons.check_circle_rounded,
      -1 => Icons.error_rounded,
      _ => Icons.info_rounded,
    };

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(icon, color: Colors.white, size: 22),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                  ),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: color,
          elevation: 6,
          duration: Duration(seconds: level == -1 ? 4 : 2),
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          dismissDirection: DismissDirection.horizontal,
        ),
      );
  }

  static bool isEmail(String value) => RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  ).hasMatch(value);

  static Future<bool> hasInternet() async {
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
}
