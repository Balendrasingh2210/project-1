import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:project_1/view/auth/auth_view_model.dart';

class CreatePinView extends ConsumerWidget {
  const CreatePinView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Create pin for the app",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: Pinput(
              onChanged: (value) =>
                  ref.read(authViewModelProvider.notifier).setPin(value),
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              defaultPinTheme: PinTheme(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                    border: Border.all(color: Colors.black.withOpacity(0.5))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[400]),
            onPressed: () => ref
                .read(authViewModelProvider.notifier)
                .onSubmitPressedCreatePin(),
            child: const Text(
              "Submit",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
