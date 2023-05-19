import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_1/view/auth/auth_view_model.dart';
import 'create_pin/create_pin_view.dart';
import 'verify_pin/verify_pin_view.dart';

class AuthView extends ConsumerWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeView =
        ref.watch(authViewModelProvider.select((value) => value.activeView));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: activeView == AuthViewType.loadingView
              ? const CircularProgressIndicator()
              : activeView == AuthViewType.createPin
                  ? const CreatePinView()
                  : const VerifyPinView(),
        ),
      ),
    );
  }
}
