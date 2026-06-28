import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(flex: 5, child: SizedBox()),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    Utils.showToast(
                      context,
                      message: state.statusMessage,
                      level: Utils.mapOp(state.op),
                    );
                    if (state.op.isSuccess) {
                      context.goNamed(RoutePaths.login);
                    }
                  },
                  listenWhen: (previous, current) => !current.op.isNeutral,
                  child: CustomButton(
                    text: "Logout",
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthEvent.logout());
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
